1. 修改数据库文件，修改table和添加新的procedure、trigger
   1. finish: 添加了各个table，添加了overdue的trigger，别的都没添加。
   2. 登录:
      1. reader: 1 123456
      2. admin: 123 123
2. 修改mybatis文件
  ## 完成
3. 修改bean、control等文件，添加新的逻辑
   service这一层应该可以直接去掉。
   `xml -> Dao -> service -> Controller`
  ## 完成
4. 预约的逻辑（暂时先不启用预约）：如果书有库存，就不需要预约；当书没有库存的时候，就需要预约。
5. 修改静态网页样式
   1. 静态页面在src/main/webapp/WEB-INF/jsp下
- 把借阅的bug修好
## done
- 借阅：
  - admin：借还日志：借出日期、应还日期、归还日期；
            未还罚款：（没还的罚款，还了之后该记录自动删除）overdue里面的所有元素均列上去
  - reader：添加我的违期罚款：book id ，借出日期、应还日期、归还日期、罚款；补交罚款的按钮
- 管理员添加管理员
- 优化背景和页面格式
     2. 静态资源在src/main/webapp/static下
6. 添加foreign keys约束
## done
7. 添加约束：一个人同一个书只能借一本
## done
8. 将归还图书放在借阅处，借阅图书的地方，如果借过该图书了，就无法再借了，按钮为灰色。
## done
9. 优化前端界面。
10. 降重（文件名、内容）

# 6/7