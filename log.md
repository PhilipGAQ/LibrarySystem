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
## done
10. 降重（文件名、内容）
## done

11. 还书的bug
## done
12. 预定逻辑：
如果被借空了则可以预定
如果预定了，每次进入主界面，则提示：你预定的图书到货了！
当借阅该书之后，预定会被自动取消
## 实现：
添加reserve的dao等，添加xml文件
reader：
header上添加预定栏
在图书主页添加预定按钮（如果被借空则按钮可以按）
添加我的预定界面，界面中可以取消预订
首页显示预定信息

admin:
header添加所有预定信息
可以对预定信息进行删除
13. 添加admin的增删改功能：
    添加admin add、admin edit、admin delete

```sh
# mvn jetty:run
```
使用浏览器访问http://localhost:8080即可进入系统。