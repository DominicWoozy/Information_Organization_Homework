<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
  <head>
    <style type="text/css"> 
          div{ display:inline} 

          table{width:1190px;font-size:15px;line-height:1.2;border-top:1px solid #a8a8a8;border-left:1px solid #a8a8a8;text-align: center;margin:57px auto;border-collapse: collapse;}
      
          table  caption{padding:26px 0;font-size: 26px;line-height: 1;color:#e63b3b;}
      
          table td, table th{ border-right:1px solid #a8a8a8; border-bottom:1px solid #a8a8a8;height:20px;}
      
          table th{background-color:#eeeeee;padding:8px 0;}
      
          table td{font-size: 12px;line-height:26px;padding:4px 15px 4px 9px;}
      
          .align-justy{text-align: justify;}
          .centerTable{margin: 20px auto;}
      
      </style> 
  </head>
  <body>

    <h1 align="center">电子健康档案--个人基本信息表</h1>
    <div style="float:left;">姓名：<xsl:value-of select="基本信息/姓名"/></div>
    <div style="float:right;">编号<xsl:value-of select="基本信息/编号"/></div>
    <br/>
    <table border="1" align="center">
      <tr>
        <th colspan="1">性别</th>
        <td colspan="3">
          0未知的性别   1男   2女  9未说明的性别
          <div class="box">
            <xsl:value-of select="基本信息/性别" />
        </div>
        </td>
        <th colspan="1">出生日期</th>
        <th colspan="2">
          <xsl:value-of select="基本信息/出生日期" />
        </th>
      </tr>
      <tr>
        <th colspan="1">身份证号</th>
        <th colspan="2">
          <xsl:value-of select="基本信息/身份证号" />
        </th>
        <th colspan="1">工作单位</th>
        <th colspan="2">
          <xsl:value-of select="基本信息/工作单位" />
        </th>
      </tr>
      <tr>
        <th colspan="1">本人电话</th>
        <th colspan="1">
          <xsl:value-of select="基本信息/本人电话" />
        </th>
        <th colspan="1">联系人姓名</th>
        <th colspan="1">
          <xsl:value-of select="基本信息/联系人姓名"/>
        </th>
        <th colspan="1">联系人电话</th>
        <th colspan="1"><xsl:value-of select="基本信息/联系人电话" /></th>
      </tr>
      <tr>
        <th colspan="1">常住类型</th>
        <th colspan="2">
          1户籍   2非户籍
          <div class="box">
            <xsl:value-of select="基本信息/常住类型" />
          </div>
        </th>
        <th colspan="1">民族</th>
        <th colspan="2">
          1汉族 2少数民族
          <div class="underline">
            <xsl:value-of select="基本信息/少数民族名称" />
          </div>
          <div class="box">
            <xsl:value-of select="基本信息/主体或少数民族" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1">血型</th>
        <th colspan="5">
          1 A型   2 B型   3 O型   4 AB型  5不详 / RH阴性：1否  2是  3不详
          <div class="box">
            <xsl:value-of select="基本信息/血型/ABO分类" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="基本信息/血型/Rh分类" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1">文化程度</th>
        <th colspan="5">
          1文盲及半文盲  2小学  3初中  4高中/技校/中专  5大学专科及以上  6不详
          <div class="box">
            <xsl:value-of select="基本信息/文化程度"/>
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1">职业</th>
        <th colspan="5">
          1国家机关、党群组织、企业、事业单位负责人 2专业技术人员 3办事人员和有关人员  4商业、服务业人员  5 农、林、牧、渔、水利业生产人员  6生产、运输设备操作人员及有关人员  7军人  8不便分类的其他从业人员
          <div class="box">
            <xsl:value-of select="基本信息/职业"/>
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1">婚姻状况</th>
        <th colspan="5">
          1未婚  2 已婚  3丧偶  4离婚  5未说明的婚姻状况
          <div class="box">
            <xsl:value-of select="基本信息/婚姻状况"/>
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1">医疗费用支付方式</th>
        <th colspan="5">
          1城镇职工基本医疗保险  2城镇居民基本医疗保险  3新型农村合作医疗 4贫困救助  5商业医疗保险   6全公费  7全自费  8其他
          <div class="underline">
            <xsl:value-of select="疾病信息/医疗费用支付方式/其他" />
          </div>
          <div class="box">
            <xsl:value-of select="疾病信息/医疗费用支付方式/支付方式索引[1]"/>
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/医疗费用支付方式/支付方式索引[2]"/>
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/医疗费用支付方式/支付方式索引[3]"/>
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1">药物过敏史</th>
        <th colspan="5">
          1无    有：2青霉素  3磺胺   4链霉素   5其他
          <div class="underline">
            <xsl:value-of select="疾病信息/药物过敏史/其他" />
          </div>
          <div class="box">
            <xsl:value-of select="疾病信息/药物过敏史/药物过敏史索引[1]"/>
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/药物过敏史/药物过敏史索引[2]"/>
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/药物过敏史/药物过敏史索引[3]"/>
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/药物过敏史/药物过敏史索引[4]"/>
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="0.5" rowspan="5">既往史</th>
      </tr>
      <tr>
        <th colspan="0.5" rowspan="1">疾病</th>
        <th colspan="5" rowspan="1" style="word-break : break-all; ">
          1无   2高血压   3糖尿病   4冠心病   5慢性阻塞性肺疾病  6恶性肿瘤  7脑卒中  8重性精神疾病   9结核病  10肝炎  11其他法定传染病  12其他
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/其他" />
          </div>
          <br/>
          <!-- 这里要一个换行,/br不是bug吗-->
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/疾病索引[1]" />
          </div>
          确诊时间
          <div >
            <xsl:value-of select="疾病信息/既往史/疾病/确诊时间[1]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/疾病索引[2]" />
          </div>
          确诊时间
          <div >
            <xsl:value-of select="疾病信息/既往史/疾病/确诊时间[2]" />
          </div>
          /          
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/疾病索引[3]" />
          </div>
          确诊时间
          <div >
            <xsl:value-of select="疾病信息/既往史/疾病/确诊时间[3]" />
          </div>
          <br/><!-- 这里要一个换行-->
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/疾病索引[4]" />
          </div>
          确诊时间
          <div >
            <xsl:value-of select="疾病信息/既往史/疾病/确诊时间[4]" />
          </div>
          /         
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/疾病索引[5]" />
          </div>
          确诊时间
          <div >
            <xsl:value-of select="疾病信息/既往史/疾病/确诊时间[5]" />
          </div>
          /         
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/疾病索引[6]" />
          </div>
          确诊时间
          <div >
            <xsl:value-of select="疾病信息/既往史/疾病/确诊时间[6]" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="0.5" rowspan="1">
          手术
        </th>
        <th colspan="5" rowspan="1">
          1无   2有：名称1 
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/手术/名称[1]" />
          </div>
          时间
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/手术/时间[1]" />
          </div>
          /
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/手术/名称[2]" />
          </div>
          时间
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/手术/时间[2]" />
          </div>
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/手术/有无" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="0.5" rowspan="1">
          外伤
        </th>
        <th colspan="5" rowspan="1">
          1无   2有：名称1 
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/外伤/名称[1]" />
          </div>
          时间
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/外伤/时间[1]" />
          </div>
          /
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/外伤/名称[2]" />
          </div>
          时间
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/外伤/时间[2]" />
          </div>
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/外伤/有无" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="0.5" rowspan="1">
          输血
        </th>
        <th colspan="5" rowspan="1">
          1无   2有：名称1 
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/输血/名称[1]" />
          </div>
          时间
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/输血/时间[1]" />
          </div>
          /
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/输血/名称[2]" />
          </div>
          时间
          <div class="underline">
            <xsl:value-of select="疾病信息/既往史/疾病/输血/时间[2]" />
          </div>
          <div class="box">
            <xsl:value-of select="疾病信息/既往史/疾病/输血/有无" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1" rowspan="3">家族史</th>
        <th colspan="1" rowspan="1">父亲</th>
        <th colspan="2" rowspan="1">
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/父亲/疾病索引[1]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/父亲/疾病索引[2]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/父亲/疾病索引[3]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/父亲/疾病索引[4]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/父亲/疾病索引[5]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/父亲/疾病索引[6]" />
          </div>
          <div class="underline">
            <xsl:value-of select="疾病信息/家族史/父亲/其他名" />
          </div>
        </th>
        <th colspan="1" rowspan="1">母亲</th>
        <th colspan="1.5" rowspan="1">
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/母亲/疾病索引[1]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/母亲/疾病索引[2]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/母亲/疾病索引[3]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/母亲/疾病索引[4]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/母亲/疾病索引[5]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/母亲/疾病索引[6]" />
          </div>
          <div class="underline">
            <xsl:value-of select="疾病信息/家族史/母亲/其他名" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1" rowspan="1">兄弟姐妹</th>
        <th colspan="2" rowspan="1">
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/兄弟姐妹/疾病索引[1]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/兄弟姐妹/疾病索引[2]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/兄弟姐妹/疾病索引[3]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/兄弟姐妹/疾病索引[4]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/兄弟姐妹/疾病索引[5]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/兄弟姐妹/疾病索引[6]" />
          </div>
          <div class="underline">
            <xsl:value-of select="疾病信息/家族史/兄弟姐妹/其他名" />
          </div>
        </th>
        <th colspan="1" rowspan="1">子女</th>
        <th colspan="1.5" rowspan="1">
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/子女/疾病索引[1]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/子女/疾病索引[2]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/子女/疾病索引[3]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/子女/疾病索引[4]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/家族史/子女/疾病索引[5]" />
          </div>/        <div class="box">
            <xsl:value-of select="疾病信息/家族史/子女/疾病索引[6]" />
          </div>
          <div class="underline">
            <xsl:value-of select="疾病信息/家族史/子女/其他名" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="5" rowspan="1">1无  2高血压  3糖尿病  4冠心病  5慢性阻塞性肺疾病  6恶性肿瘤  7脑卒中 8重性精神疾病  9结核病  10肝炎  11先天畸形  12其他
          </th>
      </tr>
      <tr>
        <th colspan="1">遗传病史</th>
        <th colspan="5">
          1无 2有：疾病名称
          <div class="underline">
            <xsl:value-of select="疾病信息/遗传病史/疾病名称" />
          </div>
          <div class="box">
            <xsl:value-of select="疾病信息/遗传病史/疾病有无" />
          </div>
        </th>
      </tr>
      <tr>
        <th colspan="1">残疾情况</th>
        <th colspan="4">
          1无残疾  2 视力残疾   3听力残疾   4言语残疾  5 肢体残疾  6智力残疾  7精神残疾    8其他残疾
          <div class="underline">
            <xsl:value-of select="疾病信息/残疾情况/其他名称" />
          </div>
        </th>
        <th colspan="1">
          <div class="box">
            <xsl:value-of select="疾病信息/残疾情况/残疾有无[1]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/残疾情况/残疾有无[2]" />
          </div>
          /
          <div class="box">
            <xsl:value-of select="疾病信息/残疾情况/残疾有无[3]" />
          </div>
          /          
          <div class="box">
            <xsl:value-of select="疾病信息/残疾情况/残疾有无[4]" />
          </div>
          /          
          <div class="box">
            <xsl:value-of select="疾病信息/残疾情况/残疾有无[5]" />
          </div>
          /          
          <div class="box">
            <xsl:value-of select="疾病信息/残疾情况/残疾有无[6]" />
          </div>
        </th>
      </tr>
    </table>
  </body>

</html>
</xsl:template>

</xsl:stylesheet>
