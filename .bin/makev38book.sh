source ~/setbuildenv.sh
#adb -s 192.168.56.101:5555 pull /data/data/com.maimairen.app.jinchuhuo.dev/databases
adb -d pull /data/data/com.maimairen.app.jinchuhuo.dev/databases

# 13800010001/qwerty/
cp ./databases/account/9109/books/196877/jinchuhuobook.bdb /Users/zengy/Pwork/mmren/run/RealBookCheckTool/v4verifybook/book-38u9109.bdb
/Users/zengy/Pwork/mmren/dev39/mmrcore/core/src/BusinessLibrary/RealBookCheckTool/rbchk v4verifybook/book-38u9109.bdb genverify
cp v4verifybook/book-38u9109.bdb v4verifybook/book-38u9109to40.bdb
/Users/zengy/Pwork/mmren/moddev/mmrcore/core/src/BusinessLibrary/RealBookCheckTool/rbchk v4verifybook/book-38u9109to40.bdb verify
