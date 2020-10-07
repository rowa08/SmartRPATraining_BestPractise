<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.3.2.0</version>
      <version>10.5.0.0</version>
    </saved-by-versions>
    <referenced-types>
      <type name="MnA_Output"/>
      <type name="MnA_Input"/>
      <type name="MnA_Dynamic"/>
      <type name="customerInput"/>
      <type name="Credentials_OpenCart"/>
    </referenced-types>
    <referenced-snippets>
      <snippet name="OpenCart_Navigate"/>
      <snippet name="General_Error"/>
      <snippet name="OpenCart_Login"/>
      <snippet name="Iteration_Error"/>
    </referenced-snippets>
    <triggers/>
    <typed-variables>
      <typed-variable name="Output" type-name="MnA_Output"/>
      <typed-variable name="MnA_Input" type-name="MnA_Input"/>
      <typed-variable name="Dynamic" type-name="MnA_Dynamic"/>
      <typed-variable name="customerInput" type-name="customerInput"/>
      <typed-variable name="Credentials_OpenCart" type-name="Credentials_OpenCart"/>
    </typed-variables>
    <global-variables>
      <variable name="Output"/>
      <variable name="MnA_Input"/>
      <variable name="Dynamic"/>
    </global-variables>
    <parameters>
      <parameter name="MnA_Input" type-name="MnA_Input"/>
    </parameters>
    <return-variables/>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Output</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">MnA_Output</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">MnA_Input</property>
      <property name="parameter" class="Boolean">true</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">MnA_Input</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Dynamic</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">MnA_Dynamic</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">customerInput</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">customerInput</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Credentials_OpenCart</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Credentials_OpenCart</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">inputPath</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="1">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="1"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="1"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="Try" id="4">
        <property name="name" class="String">General Error Handling</property>
      </object>
      <object class="Group" id="5">
        <name class="String">Load Input</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="6"/>
        <steps class="ArrayList">
          <object class="Try" id="7">
            <property name="name" class="String" id="8">Error Load Input</property>
          </object>
          <object class="Transition" serializationversion="3" id="9">
            <property name="name" class="String">Load Input File</property>
            <property name="stepAction" class="LoadFile">
              <property name="fileNameExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.FileNameValueStringExpression">
                <property name="value" class="String">C:\_RPA\InputFiles\newWebshopCustomerList.xlsx</property>
              </property>
              <property name="output" class="kapow.robot.plugin.common.stateprocessor.rest.ToVariableOutputSpecification" serializationversion="1">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">MnA_Input.customerList</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="8"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="10">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error loading input file</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Output.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="11">
            <name class="String">General Error</name>
            <snippetName class="String">General_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="12"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="13"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="6"/>
            <to idref="7"/>
          </object>
          <object class="TransitionEdge">
            <from idref="7"/>
            <to idref="9"/>
          </object>
          <object class="TransitionEdge">
            <from idref="7"/>
            <to idref="10"/>
          </object>
          <object class="TransitionEdge">
            <from idref="9"/>
            <to idref="13"/>
          </object>
          <object class="TransitionEdge">
            <from idref="10"/>
            <to idref="11"/>
          </object>
          <object class="TransitionEdge">
            <from idref="11"/>
            <to idref="12"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="14">
        <name class="String">Login OpenCart</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="15"/>
        <steps class="ArrayList">
          <object class="Group" id="16">
            <name class="String">Assign Input OpenCart_Login</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="17"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="18">
                <property name="name" class="String">Assign Username</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Credentials_OpenCart.username</property>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">OpenCart_Login_Input.username</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="19">
                <property name="name" class="String">Assign Password</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Credentials_OpenCart.password</property>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">OpenCart_Login_Input.password</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="20"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="17"/>
                <to idref="18"/>
              </object>
              <object class="TransitionEdge">
                <from idref="18"/>
                <to idref="19"/>
              </object>
              <object class="TransitionEdge">
                <from idref="19"/>
                <to idref="20"/>
              </object>
            </edges>
          </object>
          <object class="SnippetStep" id="21">
            <name class="String">Login to Opencart</name>
            <snippetName class="String">OpenCart_Login</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="Group" id="22">
            <name class="String">If Error Login OpenCart</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="23"/>
            <steps class="ArrayList">
              <object class="Try" id="24">
                <property name="name" class="String">OpenCart_Login hasError?</property>
              </object>
              <object class="Transition" serializationversion="3" id="25">
                <property name="name" class="String">Test if hasError</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">OpenCart_Login_Output.hasError</property>
                    </property>
                  </property>
                  <property name="mode" class="Integer">1</property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                    <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                      <property name="name" class="String">OpenCart_Login hasError?</property>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="26">
                <property name="name" class="String">Assign Error Message</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">OpenCart_Login_Output.errorMessage</property>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Output.errorMessage</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders" id="27"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="28">
                <property name="name" class="String">Assign Custom Error Message</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Error login Opencart</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Output.customErrorMessage</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="SnippetStep" id="29">
                <name>
                  <null/>
                </name>
                <snippetName class="String">General_Error</snippetName>
                <snippetStepComment>
                  <null/>
                </snippetStepComment>
              </object>
              <object class="End" id="30"/>
            </steps>
            <blockEndStep class="BlockEndStep" id="31"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="23"/>
                <to idref="24"/>
              </object>
              <object class="TransitionEdge">
                <from idref="24"/>
                <to idref="25"/>
              </object>
              <object class="TransitionEdge">
                <from idref="24"/>
                <to idref="26"/>
              </object>
              <object class="TransitionEdge">
                <from idref="25"/>
                <to idref="31"/>
              </object>
              <object class="TransitionEdge">
                <from idref="26"/>
                <to idref="28"/>
              </object>
              <object class="TransitionEdge">
                <from idref="28"/>
                <to idref="29"/>
              </object>
              <object class="TransitionEdge">
                <from idref="29"/>
                <to idref="30"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="32"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="15"/>
            <to idref="16"/>
          </object>
          <object class="TransitionEdge">
            <from idref="16"/>
            <to idref="21"/>
          </object>
          <object class="TransitionEdge">
            <from idref="21"/>
            <to idref="22"/>
          </object>
          <object class="TransitionEdge">
            <from idref="22"/>
            <to idref="32"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="33">
        <name class="String">Navigate to Customers</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="34"/>
        <steps class="ArrayList">
          <object class="Group" id="35">
            <name class="String">Assign Input OpenCart Navigate</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="36"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="37">
                <property name="name" class="String">Assign Menu</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Customer</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">OpenCart_Navigate_Input.menu</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="38">
                <property name="name" class="String">Assign Sub Menu</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Customers</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">OpenCart_Navigate_Input.subMenu</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="39"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="36"/>
                <to idref="37"/>
              </object>
              <object class="TransitionEdge">
                <from idref="37"/>
                <to idref="38"/>
              </object>
              <object class="TransitionEdge">
                <from idref="38"/>
                <to idref="39"/>
              </object>
            </edges>
          </object>
          <object class="SnippetStep" id="40">
            <name>
              <null/>
            </name>
            <snippetName class="String">OpenCart_Navigate</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="Group" id="41">
            <name class="String">If Error Navigate OpenCart</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="42"/>
            <steps class="ArrayList">
              <object class="Try" id="43">
                <property name="name" class="String" id="44">OpenCart_Navigate hasError?</property>
              </object>
              <object class="Transition" serializationversion="3" id="45">
                <property name="name" class="String">Test if hasError</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">OpenCart_Navigate_Output.hasError</property>
                    </property>
                  </property>
                  <property name="mode" class="Integer">1</property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                    <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                      <property name="name" idref="44"/>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="46">
                <property name="name" class="String">Assign Error Message</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">OpenCart_Navigate_Output.errorMessage</property>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Output.errorMessage</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="47">
                <property name="name" class="String">Assign Custom Error Message</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Error navigating to Customers</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Output.customErrorMessage</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="SnippetStep" id="48">
                <name>
                  <null/>
                </name>
                <snippetName class="String">General_Error</snippetName>
                <snippetStepComment>
                  <null/>
                </snippetStepComment>
              </object>
              <object class="End" id="49"/>
            </steps>
            <blockEndStep class="BlockEndStep" id="50"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="42"/>
                <to idref="43"/>
              </object>
              <object class="TransitionEdge">
                <from idref="43"/>
                <to idref="45"/>
              </object>
              <object class="TransitionEdge">
                <from idref="43"/>
                <to idref="46"/>
              </object>
              <object class="TransitionEdge">
                <from idref="45"/>
                <to idref="50"/>
              </object>
              <object class="TransitionEdge">
                <from idref="46"/>
                <to idref="47"/>
              </object>
              <object class="TransitionEdge">
                <from idref="47"/>
                <to idref="48"/>
              </object>
              <object class="TransitionEdge">
                <from idref="48"/>
                <to idref="49"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="51"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="34"/>
            <to idref="35"/>
          </object>
          <object class="TransitionEdge">
            <from idref="35"/>
            <to idref="40"/>
          </object>
          <object class="TransitionEdge">
            <from idref="40"/>
            <to idref="41"/>
          </object>
          <object class="TransitionEdge">
            <from idref="41"/>
            <to idref="51"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="52">
        <name class="String">Open Customer List</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="53"/>
        <steps class="ArrayList">
          <object class="Try" id="54">
            <property name="name" class="String" id="55">Error Open Customer List</property>
          </object>
          <object class="Transition" serializationversion="3" id="56">
            <property name="name" class="String">Open Customer List</property>
            <property name="stepAction" class="OpenVariable">
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">MnA_Input.customerList</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" class="String">Error Open Customer List</property>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="57">
            <property name="name" class="String">Set Content of Cell</property>
            <property name="stepAction" class="SetContentOfCell">
              <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error Message</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="SpecifiedRangeCellFinderDetail">
                  <property name="range" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">data!K1</property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="55"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="58">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error opening customer list</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Output.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="59">
            <name>
              <null/>
            </name>
            <snippetName class="String">General_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="60"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="61"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="53"/>
            <to idref="54"/>
          </object>
          <object class="TransitionEdge">
            <from idref="54"/>
            <to idref="56"/>
          </object>
          <object class="TransitionEdge">
            <from idref="54"/>
            <to idref="58"/>
          </object>
          <object class="TransitionEdge">
            <from idref="56"/>
            <to idref="57"/>
          </object>
          <object class="TransitionEdge">
            <from idref="57"/>
            <to idref="61"/>
          </object>
          <object class="TransitionEdge">
            <from idref="58"/>
            <to idref="59"/>
          </object>
          <object class="TransitionEdge">
            <from idref="59"/>
            <to idref="60"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="62">
        <name class="String">Set Named Ranges</name>
        <comment class="String">Kan sätta named ranges även i Excel för att göra mer dynamiskt. Behöver då inte heller ange sheet name i extract.</comment>
        <blockBeginStep class="BlockBeginStep" id="63"/>
        <steps class="ArrayList">
          <object class="Try" id="64">
            <property name="name" class="String">Error Set Named Ranges</property>
          </object>
          <object class="Transition" serializationversion="3" id="65">
            <property name="name" class="String">Set Named Range Header</property>
            <property name="stepAction" class="SetNamedRange">
              <property name="rangeName" class="DesiredElementName">
                <property name="name" class="String">Header</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="SpecifiedRangeCellFinderDetail">
                  <property name="range" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">data!1</property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="55"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="66">
            <property name="name" class="String">Set Named Range First Name</property>
            <property name="stepAction" class="SetNamedRange">
              <property name="rangeName" class="DesiredElementName">
                <property name="name" class="String">firstname</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" class="String">Header</property>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">1</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="55"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="67">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error finding headers in customerlist. Please check input file.</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Output.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="68">
            <name>
              <null/>
            </name>
            <snippetName class="String">General_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="69"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="70"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="63"/>
            <to idref="64"/>
          </object>
          <object class="TransitionEdge">
            <from idref="64"/>
            <to idref="65"/>
          </object>
          <object class="TransitionEdge">
            <from idref="64"/>
            <to idref="67"/>
          </object>
          <object class="TransitionEdge">
            <from idref="65"/>
            <to idref="66"/>
          </object>
          <object class="TransitionEdge">
            <from idref="66"/>
            <to idref="70"/>
          </object>
          <object class="TransitionEdge">
            <from idref="67"/>
            <to idref="68"/>
          </object>
          <object class="TransitionEdge">
            <from idref="68"/>
            <to idref="69"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="71">
        <property name="name" class="String" id="72">Loop Rows </property>
        <property name="stepAction" class="LoopInExcel">
          <property name="loopDirection" class="LoopInExcel$LoopDirection">
            <property name="enum-name" class="String">ROWS</property>
          </property>
          <property name="firstIndex" class="Integer">1</property>
          <property name="rangeName" class="DesiredElementName">
            <property name="name" class="String" id="73">CurrentRow</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="SpecifiedRangeCellFinderDetail">
              <property name="range" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">data!</property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="74">
        <property name="name" class="String">Iteration error handling</property>
      </object>
      <object class="Group" id="75">
        <name class="String">Extract customer info</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="76"/>
        <steps class="ArrayList">
          <object class="Try" id="77">
            <property name="name" class="String" id="78">Error Extract Customer Info</property>
          </object>
          <object class="Transition" serializationversion="3" id="79">
            <property name="name" class="String">Extract First Name</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.firstName</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByHeaderExcelColumnId">
                      <property name="headerRangeName" class="ElementName">
                        <property name="name" class="String">firstname</property>
                      </property>
                      <property name="headerPattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                        <property name="value" class="String">.*</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="80">
            <property name="name" class="String">Extract Last Name</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.lastName</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByHeaderExcelColumnId">
                      <property name="headerRangeName" class="ElementName">
                        <property name="name" class="String">Header</property>
                      </property>
                      <property name="headerPattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                        <property name="value" class="String">last_name</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="81">
            <property name="name" class="String">Extract Email</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.email</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">3</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="82">
            <property name="name" class="String">Extract Phone</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.phone</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">4</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="83">
            <property name="name" class="String">Extract Address</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.address</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">5</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="84">
            <property name="name" class="String">Extract Country</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.country</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">6</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="85">
            <property name="name" class="String">Extract City</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.city</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">7</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="86">
            <property name="name" class="String">Extract Region</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.region</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">8</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="87">
            <property name="name" class="String">Extract Postcode</property>
            <property name="stepAction" class="ExtractCell">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">customerInput.postcode</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="ExcelElementFinder">
                <property name="detail" class="NamedRangeCellFinderDetail">
                  <property name="rangeName" class="ElementName">
                    <property name="name" idref="73"/>
                  </property>
                  <property name="usage" class="ColumnFromRange">
                    <property name="columnId" class="ByIndexExcelColumnId">
                      <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                        <property name="value" class="Integer">9</property>
                      </property>
                    </property>
                  </property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="78"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="88">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error extracting customer info</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Dynamic.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" idref="27"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="89">
            <name class="String">Iteration Error</name>
            <snippetName class="String">Iteration_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="90"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="91"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="76"/>
            <to idref="77"/>
          </object>
          <object class="TransitionEdge">
            <from idref="77"/>
            <to idref="79"/>
          </object>
          <object class="TransitionEdge">
            <from idref="77"/>
            <to idref="88"/>
          </object>
          <object class="TransitionEdge">
            <from idref="79"/>
            <to idref="80"/>
          </object>
          <object class="TransitionEdge">
            <from idref="80"/>
            <to idref="81"/>
          </object>
          <object class="TransitionEdge">
            <from idref="81"/>
            <to idref="82"/>
          </object>
          <object class="TransitionEdge">
            <from idref="82"/>
            <to idref="83"/>
          </object>
          <object class="TransitionEdge">
            <from idref="83"/>
            <to idref="84"/>
          </object>
          <object class="TransitionEdge">
            <from idref="84"/>
            <to idref="85"/>
          </object>
          <object class="TransitionEdge">
            <from idref="85"/>
            <to idref="86"/>
          </object>
          <object class="TransitionEdge">
            <from idref="86"/>
            <to idref="87"/>
          </object>
          <object class="TransitionEdge">
            <from idref="87"/>
            <to idref="91"/>
          </object>
          <object class="TransitionEdge">
            <from idref="88"/>
            <to idref="89"/>
          </object>
          <object class="TransitionEdge">
            <from idref="89"/>
            <to idref="90"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="92">
        <property name="name" class="String">Set Current Window OpenCart</property>
        <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
          <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
            <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
              <property name="windowId" class="kapow.robot.robomaker.state.DataModelId">
                <property name="id" class="String">Unnamed</property>
              </property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="93">name</element>
        </property>
      </object>
      <object class="Group" id="94">
        <name class="String">Filter results</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="95"/>
        <steps class="ArrayList">
          <object class="Try" id="96">
            <property name="name" class="String" id="97">Error Filter results</property>
          </object>
          <object class="Transition" serializationversion="3" id="98">
            <property name="name" class="String">Enter Email</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.email</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-email</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="97"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="99">
            <property name="name" class="String">Click Filter</property>
            <property name="stepAction" class="Click" serializationversion="0">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.button</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">button-filter</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="97"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="100">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error filtering results</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Dynamic.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="101">
            <name class="String">Iteration Error</name>
            <snippetName class="String">Iteration_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="102"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="103"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="95"/>
            <to idref="96"/>
          </object>
          <object class="TransitionEdge">
            <from idref="96"/>
            <to idref="98"/>
          </object>
          <object class="TransitionEdge">
            <from idref="96"/>
            <to idref="100"/>
          </object>
          <object class="TransitionEdge">
            <from idref="98"/>
            <to idref="99"/>
          </object>
          <object class="TransitionEdge">
            <from idref="99"/>
            <to idref="103"/>
          </object>
          <object class="TransitionEdge">
            <from idref="100"/>
            <to idref="101"/>
          </object>
          <object class="TransitionEdge">
            <from idref="101"/>
            <to idref="102"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="104">
        <property name="name" class="String">Set Named Tag tbody</property>
        <property name="stepAction" class="SetNamedTag" serializationversion="0">
          <property name="tagName" class="DesiredElementName">
            <property name="name" class="String">tbody</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.table.tbody</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Group" id="105">
        <name class="String">Stop If Results are Found</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="106"/>
        <steps class="ArrayList">
          <object class="Try" id="107">
            <property name="name" class="String">Results?</property>
          </object>
          <object class="Transition" serializationversion="3" id="108">
            <property name="name" class="String">Test if no results</property>
            <property name="stepAction" class="TestTag" serializationversion="1">
              <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                <property name="value" class="String">No results!</property>
              </property>
              <property name="include" class="Boolean">true</property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">tbody</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.td.text</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" class="String">Results?</property>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="109">
            <property name="name" class="String">Write Log</property>
            <property name="stepAction" class="WriteLog2">
              <property name="expression" class="Expression" serializationversion="1">
                <property name="text" class="String">"Customer with email "+customerInput.email+" found."</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="110">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Customer already exists</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Dynamic.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="111">
            <name>
              <null/>
            </name>
            <snippetName class="String">Iteration_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="112"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="113"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="106"/>
            <to idref="107"/>
          </object>
          <object class="TransitionEdge">
            <from idref="107"/>
            <to idref="108"/>
          </object>
          <object class="TransitionEdge">
            <from idref="107"/>
            <to idref="109"/>
          </object>
          <object class="TransitionEdge">
            <from idref="108"/>
            <to idref="113"/>
          </object>
          <object class="TransitionEdge">
            <from idref="109"/>
            <to idref="110"/>
          </object>
          <object class="TransitionEdge">
            <from idref="110"/>
            <to idref="111"/>
          </object>
          <object class="TransitionEdge">
            <from idref="111"/>
            <to idref="112"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="114">
        <name class="String">Enter data in form</name>
        <comment class="String">Föredra användandet av id istället för name</comment>
        <blockBeginStep class="BlockBeginStep" id="115"/>
        <steps class="ArrayList">
          <object class="Try" id="116">
            <property name="name" class="String" id="117">Error Enter data in form</property>
          </object>
          <object class="Transition" serializationversion="3" id="118">
            <property name="name" class="String">Click Add Customer</property>
            <property name="stepAction" class="Click" serializationversion="0">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.div.a</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">btn btn-primary</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="117"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="119">
            <property name="name" class="String">Enter First Name</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.firstName</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-firstname</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" idref="117"/>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Group" id="120">
            <name class="String">Alternativ om id inte finns</name>
            <comment class="String">Named tags</comment>
            <blockBeginStep class="BlockBeginStep" id="121"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="122">
                <property name="name" class="String">Set Named Tag</property>
                <property name="stepAction" class="SetNamedTag" serializationversion="0">
                  <property name="tagName" class="DesiredElementName">
                    <property name="name" class="String">LastName</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.label</property>
                    </property>
                    <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                      <property name="value" class="String">Last Name</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                    <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                      <property name="name" idref="117"/>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="123">
                <property name="name" class="String">Enter Last Name</property>
                <property name="stepAction" class="EnterText">
                  <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">customerInput.lastName</property>
                    </property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="AfterTagRelation" serializationversion="1">
                      <property name="tagName" class="ElementName">
                        <property name="name" class="String">LastName</property>
                      </property>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.input</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                    <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                      <property name="name" idref="117"/>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="124"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="121"/>
                <to idref="122"/>
              </object>
              <object class="TransitionEdge">
                <from idref="122"/>
                <to idref="123"/>
              </object>
              <object class="TransitionEdge">
                <from idref="123"/>
                <to idref="124"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="125">
            <name class="String">Alternativ 2 om id inte finns (adv)</name>
            <comment class="String">Extrahera och modifiera path</comment>
            <blockBeginStep class="BlockBeginStep" id="126"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="127">
                <property name="name" class="String">Extract Path</property>
                <property name="stepAction" class="ExtractPath">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">inputPath</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.label</property>
                    </property>
                    <property name="nodePattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                      <property name="value" class="String">E-Mail</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                    <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                      <property name="name" idref="117"/>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="128">
                <property name="name" class="String">Modify Input Path</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" idref="0"/>
                        </property>
                      </element>
                      <element class="ReplaceText">
                        <property name="textToReplace" class="String">label</property>
                        <property name="replacementText" class="String">div.input</property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" idref="0"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                    <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                      <property name="name" idref="117"/>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="129">
                <property name="name" class="String">Enter Email</property>
                <property name="stepAction" class="EnterText">
                  <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">customerInput.email</property>
                    </property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" idref="0"/>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                    <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                      <property name="name" idref="117"/>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="130"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="126"/>
                <to idref="127"/>
              </object>
              <object class="TransitionEdge">
                <from idref="127"/>
                <to idref="128"/>
              </object>
              <object class="TransitionEdge">
                <from idref="128"/>
                <to idref="129"/>
              </object>
              <object class="TransitionEdge">
                <from idref="129"/>
                <to idref="130"/>
              </object>
            </edges>
          </object>
          <object class="Transition" serializationversion="3" id="131">
            <property name="name" class="String">Enter Phone</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.phone</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-telephone</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="132">
            <property name="name" class="String" id="133">Enter Password</property>
            <property name="stepAction" class="EnterPassword">
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.PasswordValueStringExpression">
                <property name="value" encryption-type="1" class="String">yXmTRb3qbmS8ndgbV52nKaw4</property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-password</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="134">
            <property name="name" idref="133"/>
            <property name="stepAction" class="EnterPassword">
              <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.PasswordValueStringExpression">
                <property name="value" encryption-type="1" class="String">yXmTRb3qbmS8ndgbV52nKaw4</property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-confirm</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="135">
            <property name="name" class="String">Click Add Address</property>
            <property name="stepAction" class="Click" serializationversion="0">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.div.form.div.div.div.div.ul.li[1].a</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="136">
            <property name="name" class="String">Enter First Name</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.firstName</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">address[1][firstname]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="137">
            <property name="name" class="String">Enter Last Name</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.lastName</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">address[1][lastname]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="138">
            <property name="name" class="String">Enter Address</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.address</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">address[1][address_1]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="139">
            <property name="name" class="String">Enter City</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.city</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">address[1][city]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="140">
            <property name="name" class="String">Enter Postcode</property>
            <property name="stepAction" class="EnterText">
              <property name="textExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.postcode</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-postcode1</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="141">
            <property name="name" class="String">Select Country</property>
            <property name="stepAction" class="SelectOption">
              <property name="optionValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.country</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.select</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-country1</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="142">
            <property name="name" class="String">Select Region</property>
            <property name="stepAction" class="SelectOption">
              <property name="optionValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">customerInput.region</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.select</property>
                </property>
                <property name="attributeName" class="String">id</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">input-zone1</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="143">
            <property name="name" class="String">Click Default Address</property>
            <property name="stepAction" class="Click" serializationversion="0">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.input</property>
                </property>
                <property name="attributeName" class="String" id="144">name</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">address[1][default]</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element idref="144"/>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="145">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error entering data in form</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Dynamic.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="146">
            <name class="String">Iteration Error</name>
            <snippetName class="String">Iteration_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="147"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="148"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="115"/>
            <to idref="116"/>
          </object>
          <object class="TransitionEdge">
            <from idref="116"/>
            <to idref="118"/>
          </object>
          <object class="TransitionEdge">
            <from idref="116"/>
            <to idref="145"/>
          </object>
          <object class="TransitionEdge">
            <from idref="118"/>
            <to idref="119"/>
          </object>
          <object class="TransitionEdge">
            <from idref="119"/>
            <to idref="120"/>
          </object>
          <object class="TransitionEdge">
            <from idref="120"/>
            <to idref="125"/>
          </object>
          <object class="TransitionEdge">
            <from idref="125"/>
            <to idref="131"/>
          </object>
          <object class="TransitionEdge">
            <from idref="131"/>
            <to idref="132"/>
          </object>
          <object class="TransitionEdge">
            <from idref="132"/>
            <to idref="134"/>
          </object>
          <object class="TransitionEdge">
            <from idref="134"/>
            <to idref="135"/>
          </object>
          <object class="TransitionEdge">
            <from idref="135"/>
            <to idref="136"/>
          </object>
          <object class="TransitionEdge">
            <from idref="136"/>
            <to idref="137"/>
          </object>
          <object class="TransitionEdge">
            <from idref="137"/>
            <to idref="138"/>
          </object>
          <object class="TransitionEdge">
            <from idref="138"/>
            <to idref="139"/>
          </object>
          <object class="TransitionEdge">
            <from idref="139"/>
            <to idref="140"/>
          </object>
          <object class="TransitionEdge">
            <from idref="140"/>
            <to idref="141"/>
          </object>
          <object class="TransitionEdge">
            <from idref="141"/>
            <to idref="142"/>
          </object>
          <object class="TransitionEdge">
            <from idref="142"/>
            <to idref="143"/>
          </object>
          <object class="TransitionEdge">
            <from idref="143"/>
            <to idref="148"/>
          </object>
          <object class="TransitionEdge">
            <from idref="145"/>
            <to idref="146"/>
          </object>
          <object class="TransitionEdge">
            <from idref="146"/>
            <to idref="147"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="149">
        <name class="String">Save</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="150"/>
        <steps class="ArrayList">
          <object class="Try" id="151">
            <property name="name" class="String">Error Save</property>
          </object>
          <object class="Transition" serializationversion="3" id="152">
            <property name="name" class="String">Click Save</property>
            <property name="stepAction" class="Click" serializationversion="0">
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.div.div.div.div.div.button</property>
                </property>
                <property name="attributeName" class="String">class</property>
                <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
                  <property name="text" class="String">btn btn-primary</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative">
                <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
                  <property name="name" class="String">Error Save</property>
                </property>
              </property>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="153">
            <property name="name" class="String">Assign Custom Error Message</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Error saving form</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Dynamic.customErrorMessage</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="SnippetStep" id="154">
            <name class="String">Iteration Error</name>
            <snippetName class="String">Iteration_Error</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="End" id="155"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="156"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="150"/>
            <to idref="151"/>
          </object>
          <object class="TransitionEdge">
            <from idref="151"/>
            <to idref="152"/>
          </object>
          <object class="TransitionEdge">
            <from idref="151"/>
            <to idref="153"/>
          </object>
          <object class="TransitionEdge">
            <from idref="152"/>
            <to idref="156"/>
          </object>
          <object class="TransitionEdge">
            <from idref="153"/>
            <to idref="154"/>
          </object>
          <object class="TransitionEdge">
            <from idref="154"/>
            <to idref="155"/>
          </object>
        </edges>
      </object>
      <object class="End" id="157"/>
      <object class="Transition" serializationversion="3" id="158">
        <property name="name" class="String">Assign Custom Error Message</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">"Failed to add customer: "+Dynamic.customErrorMessage</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">Dynamic.customErrorMessage</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="159">
        <property name="name" class="String">Set Error Message</property>
        <property name="stepAction" class="SetContentOfCell">
          <property name="contentExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Dynamic.customErrorMessage</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="ExcelElementFinder">
            <property name="detail" class="NamedRangeCellFinderDetail">
              <property name="rangeName" class="ElementName">
                <property name="name" class="String">CurrentRow</property>
              </property>
              <property name="usage" class="ColumnFromRange">
                <property name="columnId" class="ByIndexExcelColumnId">
                  <property name="offset" class="kapow.robot.plugin.common.support.expression.integerexpr.ValueIntegerExpression">
                    <property name="value" class="Integer">10</property>
                  </property>
                </property>
              </property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="93"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="160">
        <property name="name" class="String">Next iteration</property>
        <property name="stepAction" class="GenerateError"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element class="String">reportingViaAPI</element>
            <element class="String">reportingViaLog</element>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration">
            <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
              <property name="name" idref="72"/>
            </property>
          </property>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="End" id="161"/>
      <object class="Transition" serializationversion="3" id="162">
        <property name="name" class="String">Stop robot with error</property>
        <property name="stepAction" class="GenerateError">
          <property name="errorMessageExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">Output.customErrorMessage</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="End" id="163"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="5"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="162"/>
      </object>
      <object class="TransitionEdge">
        <from idref="5"/>
        <to idref="14"/>
      </object>
      <object class="TransitionEdge">
        <from idref="14"/>
        <to idref="33"/>
      </object>
      <object class="TransitionEdge">
        <from idref="33"/>
        <to idref="52"/>
      </object>
      <object class="TransitionEdge">
        <from idref="52"/>
        <to idref="62"/>
      </object>
      <object class="TransitionEdge">
        <from idref="62"/>
        <to idref="71"/>
      </object>
      <object class="TransitionEdge">
        <from idref="71"/>
        <to idref="74"/>
      </object>
      <object class="TransitionEdge">
        <from idref="74"/>
        <to idref="75"/>
      </object>
      <object class="TransitionEdge">
        <from idref="74"/>
        <to idref="158"/>
      </object>
      <object class="TransitionEdge">
        <from idref="75"/>
        <to idref="92"/>
      </object>
      <object class="TransitionEdge">
        <from idref="92"/>
        <to idref="94"/>
      </object>
      <object class="TransitionEdge">
        <from idref="94"/>
        <to idref="104"/>
      </object>
      <object class="TransitionEdge">
        <from idref="104"/>
        <to idref="105"/>
      </object>
      <object class="TransitionEdge">
        <from idref="105"/>
        <to idref="114"/>
      </object>
      <object class="TransitionEdge">
        <from idref="114"/>
        <to idref="149"/>
      </object>
      <object class="TransitionEdge">
        <from idref="149"/>
        <to idref="157"/>
      </object>
      <object class="TransitionEdge">
        <from idref="158"/>
        <to idref="159"/>
      </object>
      <object class="TransitionEdge">
        <from idref="159"/>
        <to idref="160"/>
      </object>
      <object class="TransitionEdge">
        <from idref="160"/>
        <to idref="161"/>
      </object>
      <object class="TransitionEdge">
        <from idref="162"/>
        <to idref="163"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
