#!/bin/bash


#########################################################################
# File Name: verify.sh
# Author: JeremyHe
# mail: jeremyhe.cn@gmail.com
# Created Time: 一  9/ 5 15:07:04 2016
#########################################################################

./rbchk ./book-38u3545-01初始状态.bdb genverify
./rbchk ./book-38u3545-02出货甲鱼库存为空.bdb genverify
./rbchk ./book-38u3545-03出货鞋库存全空.bdb genverify
./rbchk ./book-38u3545-04进货赊购甲鱼.bdb genverify
./rbchk ./book-38u3545-05负库存出货两双鞋.bdb genverify
./rbchk ./book-38u3545-06赊购方式补充进货两双鞋库存归零.bdb genverify
./rbchk ./book-38u3545-07结清鞋的赊购.bdb genverify
./rbchk ./book-38u3545-08赊购全部清账.bdb genverify
./rbchk ./book-38u3545-09赊销方式销售甲鱼库存全部归零.bdb genverify
./rbchk ./book-38u3545-10应收帐款清账无应收应付库存归零.bdb genverify
./rbchk ./book-38u3545-11删除所有非应收应付相关的货单.bdb genverify
./rbchk ./book-38u3545-12补充出货单将库存归零.bdb genverify
./rbchk ./book-38u3545-13进货后编辑.bdb genverify
./rbchk ./book-38u3545-14编辑后退单库存归零.bdb genverify
./rbchk ./book-38u3545-15所有订单全部退单包括已经收付完成的库存归零账户归零.bdb genverify
./rbchk ./book-38u3545-16各种开单类型.bdb genverify
./rbchk ./book-38u9109-01日50流水模版库.bdb genverify
./rbchk ./book-38u9109-02分区基准3000流水账本.bdb genverify
./rbchk ./book-38u9130-01日50种子账本.bdb genverify
./rbchk ./book-38u9130-02日50总16k流水账本.bdb genverify
./rbchk ./book-38u9130-03日100种子账本.bdb genverify
./rbchk ./book-38u9130-04日100总30k流水账本.bdb genverify
