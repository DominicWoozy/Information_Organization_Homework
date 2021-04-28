<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="test.css" />
                <meta charset="utf-8" /> 
                <title>电子健康档案</title>
            </head>
            <body>
                <h1>
                    电子健康档案&#160; &#160; &#160; &#160; &#160;个人基本信息表
                </h1>
                <h3>
                    姓名： 周辰飞
                </h3>
                <h3>
                    编号：8305180707
                </h3>

                
                <table class="info-table" border="1">
                
                    <tr>
                        <th colspan="2">性别</th>
                        <td colspan="5">
                            0未知的性别   1男   2女  9未说明的性别
                            <div class="box">
                                <xsl:value-of select="个人信息/性别" />
                            </div>
                        </td>
                        <th colspan="1">出生日期</th>
                        <td colspan="3"><xsl:value-of select="个人信息/出生日期" /></td>
                    </tr>
                    <tr>
                        <th colspan="2">身份证号</th>
                        <td colspan="3"><xsl:value-of select="个人信息/身份证号" /></td>
                        <th colspan="2">工作单位</th>
                        <td colspan="3"><xsl:value-of select="个人信息/工作单位" /></td>
                    </tr>
                    <tr>
                        <th colspan="2">文化程度</th>
                        <td colspan="8">
                            1文盲及半文盲  2小学  3初中  4高中/技校/中专  5大学专科及以上  6不详
                            <div class="box">
                                <xsl:value-of select="个人信息/文化程度/key" />
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <th colspan="2">本人电话</th>
                        <td colspan="3">
                            <xsl:value-of select="个人信息/本人电话" />
                        </td>
                        <td colspan="1">
                            联系人姓名
                        </td>
                        <td colspan="1">
                            <xsl:value-of select="个人信息/联系人姓名" />
                        </td>
                        <th colspan="1">
                            联系人电话
                        </th>
                        <td colspan="2">
                            <xsl:value-of select="个人信息/联系人电话" />
                        </td>
                    </tr>

                    <tr>
                        <th colspan="2">常住类型</th>
                        <td colspan="3">
                            1户籍   2非户籍
                            <div class="box">
                                <xsl:value-of select="个人信息/常住类型/key" />
                            </div>
                        </td>
                        <th colspan="2">民  族</th>
                        <td colspan="3">
                            1汉族 2少数民族
                            <xsl:if test="个人信息/民族/key = 2 ">
                                <div class="underline">
                                    <xsl:value-of select="个人信息/民族/少数民族" />
                                </div>
                            </xsl:if>
                            <div class="box">
                                <xsl:value-of select="个人信息/民族/key" />
                            </div>
                        </td>
                    </tr>

                    <tr rowspan="2">
                        <th colspan="2">血型</th>
                        <td colspan="8">
                            1 A型   2 B型   3 O型   4 AB型  5不详 / RH阴性：1否  2是  3不详
                            <div class="box">
                                <xsl:value-of select="个人信息/血型/key" />
                            </div>
                            <div class="slash">
                                /
                            </div>
                            <div class="box">
                                <xsl:value-of select="个人信息/血型/RH阴性/key" />
                            </div>
                        </td>
                    </tr>

                    <tr rowspan="2">
                        <th colspan="2">文化程度</th>
                        <td colspan="8">
                            1文盲及半文盲  2小学  3初中  4高中/技校/中专  5大学专科及以上  6不详
                            <div class="box">
                                <xsl:value-of select="个人信息/文化程度/key" />
                            </div>
                        </td>
                    </tr>

                    <tr rowspan="2">
                        <th colspan="2">职业</th>
                        <td colspan="8">
                            1国家机关、党群组织、企业、事业单位负责人 2专业技术人员 3办事人员和有关人员<br />4商业、服务业人员  5 农、林、牧、渔、水利业生产人员  <br/>6生产、运输设备操作人员及有关人员  7军人  8不便分类的其他从业人员 
                            <div class="box">
                                <xsl:value-of select="个人信息/职业/key" />
                            </div>
                        </td>
                    </tr>

                    <tr rowspan="2">
                        <th colspan="2">婚姻状况</th>
                        <td colspan="8">
                            1未婚  2 已婚  3丧偶  4离婚  5未说明的婚姻状况
                            <div class="box">
                                <xsl:value-of select="个人信息/婚姻状况/key" />
                            </div>
                        </td>
                    </tr>

                    <tr rowspan="2">
                        <th colspan="2">医疗费用支付方式</th>
                        <td colspan="8">
                            1城镇职工基本医疗保险  2城镇居民基本医疗保险  3新型农村合作医疗<br />4贫困救助  5商业医疗保险   6全公费  7全自费  8其他            
                            <div class="box">
                                <xsl:value-of select="个人信息/医疗费用支付方式/key" />
                            </div>
                        </td>
                    </tr>

                    <tr rowspan="2">
                        <th colspan="2">药物过敏史</th>
                        <td colspan="8">
                            1无    有：2青霉素  3磺胺   4链霉素   5其他
                            <div class="underline">
                                <xsl:value-of select="个人信息/药物过敏史/其他" />
                            </div>
                            <div class="box">
                                <xsl:value-of select="个人信息/药物过敏史/key" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="1" rowspan="5">既往史</th>
                    </tr>
                    <tr>
                        <th colspan="1" rowspan="1" >疾病</th>
                            <td colspan="8">1 无 2高血压 3糖尿病 4冠心病 5慢性阻塞性肺疾病 6恶性肿瘤_____<br/>
                             7脑卒中 8重性精神疾病 9结核病 10肝炎 11先天畸形 12其它______
                             &#160; &#160; &#160; &#160;
                             <xsl:value-of select="档案个人信息/疾病"/><br/>
                             <div class="box-inline"></div>&#160;确诊时间______年___月  /   <div class="box-inline"></div>&#160;确诊时间______年___月  /   <div class="box-inline"></div>&#160;确诊时间______年___月  /   <br/>
                             <div class="box-inline"></div>&#160;确诊时间______年___月  /   <div class="box-inline"></div>&#160;确诊时间______年___月  /   <div class="box-inline"></div>&#160;确诊时间______年___月  /   						
                            </td>
                            <xsl:comment><br/>表示在一个row中换行</xsl:comment>
                    </tr>
                    <tr>
                        <th colspan="1" rowspan="1" >手术</th>
                            <td colspan="8">1无   &#160;2有：  名称1_____时间____/名称2_____时间_____
                                &#160; &#160; &#160; &#160;
                                <xsl:value-of select="档案个人信息/手术"/>
                            </td>
                    </tr>
                    <tr>
                        <th colspan="1" rowspan="1" >外伤</th>
                            <td colspan="8">1无   &#160;2有：  名称1_____时间____/名称2_____时间_____
                                &#160; &#160; &#160; &#160;
                                <xsl:value-of select="档案个人信息/外伤"/>
                            </td>
                    </tr>
                    <tr>
                        <th colspan="1" rowspan="1" >输血</th>
                            <td colspan="8">1无   &#160;2有：  名称1_____时间____/名称2_____时间_____
                                &#160; &#160; &#160; &#160;
                                <xsl:value-of select="档案个人信息/输血"/>
                            </td>
                    </tr>
                    <tr>
                        <th colspan="2" rowspan="3" >家族史</th>
                            <td colspan="1" rowspan="1" >父亲</td>
                                <td colspan="3"><xsl:value-of select="个人信息/父亲"/>
                                <div class="box">
                                    <xsl:value-of select="个人信息/血型/key" />
                                </div>
                                <div class="slash">
                                    /
                                </div>
                                <div class="box">
                                    <xsl:value-of select="个人信息/家族史/父亲/key" />
                                </div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                _________
                            </td>
                            <td colspan="1" rowspan="1" >母亲</td>
                                <td colspan="3">
                                    <div class="box"><xsl:value-of select="个人信息/家族史/父亲/key" /></div>
                                    <div class="slash">/</div>
                                    <div class="box"></div>
                                    <div class="slash">/</div>
                                    <div class="box"></div>
                                    <div class="slash">/</div>
                                    <div class="box"></div>
                                    <div class="slash">/</div>
                                    <div class="box"></div>
                                    <div class="slash">/</div>
                                    <div class="box"></div>
                                    _________
                                </td>
                    </tr>
                    <tr>
                        <td colspan="1" rowspan="1" >兄弟姐妹</td>
                            <td colspan="3"><xsl:value-of select="档案个人信息/兄弟姐妹"/>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                _________
                            </td>
                        <td colspan="1" rowspan="1" >子女</td>
                            <td colspan="3"><xsl:value-of select="档案个人信息/子女"/>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                <div class="slash">/</div>
                                <div class="box"></div>
                                _________
                            </td>
                    </tr>
                    <tr>
                        <td colspan="8" rowspan="1" >1 无 2高血压 3糖尿病 4冠心病 5慢性阻塞性肺疾病 6恶性肿瘤 7脑卒中<br/>
                        8重性精神疾病 9结核病 10肝炎 11先天畸形 12其它___________
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">遗传病史</th>
                        <td colspan="8" >1 无 2 有：疾病名称_________&#160; &#160; &#160; &#160;
                            <xsl:value-of select="档案个人信息/遗传病史"/>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">残疾情况</th>
                        <td colspan="8" >1无残疾 2视力残疾 3听力残疾 4言语残疾 5肢体残疾 6智力残疾 7精神残疾 8其它残疾_________
                            <div class="box"></div>
                            <div class="slash">/</div>
                            <div class="box"></div>
                            <div class="slash">/</div>
                            <div class="box"></div>
                            <div class="slash">/</div>
                            <div class="box"></div>
                            <div class="slash">/</div>
                            <div class="box"></div>
                            <div class="slash">/</div>
                            <div class="box"></div>
                            &#160; &#160; &#160; &#160; 
                             <xsl:comment>
                                 &#160;表示空格；
                                 但如果多个空格符被连用将会被识别为一个空格
                                 &#160; &#160;两个&#160;的中间打上空格将使得每个空格符不可被忽略
                             </xsl:comment>
                            <xsl:value-of select="档案个人信息/残疾情况"/>
                        </td>
                    </tr>

                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>