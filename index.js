// 加载Express模块
const express = require('express');
// 加载CORS模块
const cors = require('cors');

const md5 = require('md5');

// 加载MySQL模块
const mysql = require('mysql');

const bodyParser=require('body-parser');
const { threadId } = require('worker_threads');

// 创建MySQL连接池
const pool = mysql.createPool({
  // 数据库服务器的地址
  host:'127.0.0.1',
  // 数据库服务器的端口号
  port:3306,
  // 数据库用户的用户名
  user:'root',
  // 数据库用户的密码
  password:'',
  // 数据库名称
  database:'tip',
  // 编码方式
  charset:'utf8',
  // 最大连接数
  connectionLimit:20
});

// 创建WEB服务器实例
const app = express();

app.use(bodyParser.urlencoded({extended:false}));

// 将CORS作为Server的中间件
app.use(cors({
  origin:['http://localhost:8080','http://127.0.0.1:8080']
}));

//注册
app.post('/reg',(req,res)=>{
  let obj=req.body;
  let sql='select count(id) as count from tip_user where user_name=?';
  pool.query(sql,[obj.user_name],(err,result)=>{
    if(err) throw err;
    if(result[0].count==0){
      //重复验证
      let sql='insert into tip_user(user_name,password,user_phone,email,introduce,real_name,national,user_province,user_city,user_county,user_tel,school,sex,contry,zip_code,address,birthday) values(?,MD(?),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)';
      pool.query(sql,[obj.user_name,obj.password,obj.user_phone,obj.email,introduce,obj.real_name,obj.national,obj.user_province,obj.user_city,obj.user_county,obj.user_tel,obj.school,obj.sex,obj.contry,obj.zip_code,obj.address,obj.birthday],(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send({message:'插入成功',code:1,result:result[0]});
      })
    }else{
      res.send('0');
    }
  });
});

//登录
app.post('/login',(req,res)=>{
  let user_name=req.body.user_name;
  let password=req.body.password;
  let sql='select * from tip_user where user_name=? and password=?';
  pool.query(sql,[user_name,md5(password)],(err,result)=>{
    if(err) throw err;
    console.log(result);
    if(result.length){
      res.send({message:'查询成功',code:1,result:result[0]});
    }else{
      res.send({message:'用户名或密码错误',code:0});
    }
  });
});

//刊物列表
app.get('/book_list',(req,res)=>{
  let sql='select book_name,author,press from tip_book';
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    console.log(result);
    res.send({message:'查询成功',code:1,result:result});
  });
});

//搜索刊物 模糊查询
app.get('/booksel_bn',(req,res)=>{
  let sel_name='%'+req.params.bookName+'%';                   //与名称输入框的name相同***
  let sel_author='%'+req.params.bookAuthor+'%';               //与名称输入框的name相同***
  let sel_press=req.params.press;                             //与名称输入框的name相同***
  let sql='select book_name,author,press,book_pic from tip_book where book_name like ? and author like ? and press like ?'
  pool.query(sql,[sel_name,sel_author,sel_press],(err,result)=>{
    if(err) throw err;
    console.log(result);
    if(result.length==0){
      res.send({message:'未查到刊物',code:0});
    }else{
      res.send({message:'查询成功',code:1,result:result});
    }
  });
});

//刊物详情
app.get('/book/:id',(req,res)=>{                            //id与页面设定的id名相同***
  let id=req.params.id;                                     //id与页面设定的id名相同***
  let='select book_name,author,press,book_num,packaging,book_size,print_num,edition,book_paper,book_price,transfer,book_spec,book_pic,book_details from tip_book where book_id=?';
  pool.query(sql,[id],(err,result)=>{
    if(err) throw err;
    console.log(result);
    res.send({message:'查询成功',code:1,result:result[0]});
  });
});

//所有商品列表
app.query('/all_goods',(req,res)=>{
  let sql='select tip_goods.goods_id,tip_goods.goods_name,tip_goods.price tip_pic_goods.pic_goods_use from tip_goods,pic_goods_use where pic_goods_use.pic_goods_gid=tip_goods.goods_id and pic_goods_use.pic_goods_use=3';                           //待验证！！！！！
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    console.log(result);
    res.send({message:'查询成功',code:1,result:result});
  });
});

//商品详情页面
app.query('/goods/:id',(req,res)=>{                         //id与页面设定的id名相同***
  let id=req.params.id;                                     //id与页面设定的id名相同***
  let sql='select '
})



// 指定WEB服务器监听的端口
server.listen(3000);

