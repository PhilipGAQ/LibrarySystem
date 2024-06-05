1. 修改数据库文件，修改table和添加新的procedure、trigger
   1. finish: 添加了各个table，添加了overdue的trigger，别的都没添加。
   2. 登录:
      1. reader: 1 123456
      2. admin: 123 123
2. 修改mybatis文件
   完成
3. 修改bean、control等文件，添加新的逻辑
   service这一层应该可以直接去掉。
   `xml -> Dao -> service -> Controller`
   完成
4. 预约的逻辑（暂时先不启用预约）：如果书有库存，就不需要预约；当书没有库存的时候，就需要预约。
5. 修改静态网页样式
   1. 静态页面在src/main/webapp/WEB-INF/jsp下
   2. 静态资源在src/main/webapp/static下