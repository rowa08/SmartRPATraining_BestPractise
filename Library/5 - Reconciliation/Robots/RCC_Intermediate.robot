<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.5.0.0</version>
    </saved-by-versions>
    <referenced-types>
      <type name="Credentials_OpenCart"/>
      <type name="RCC_Output"/>
    </referenced-types>
    <referenced-snippets>
      <snippet name="OpenCart_Login"/>
    </referenced-snippets>
    <triggers/>
    <typed-variables>
      <typed-variable name="Credentials_OpenCart" type-name="Credentials_OpenCart"/>
      <typed-variable name="Output" type-name="RCC_Output"/>
    </typed-variables>
    <global-variables>
      <variable name="Output"/>
    </global-variables>
    <parameters>
      <parameter name="Credentials_OpenCart" type-name="Credentials_OpenCart"/>
    </parameters>
    <return-variables/>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Credentials_OpenCart</property>
      <property name="parameter" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Credentials_OpenCart</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Output</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">RCC_Output</property>
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
  <property name="usePre96DefaultWaiting" class="Boolean" id="0">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="0"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="1">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="0"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="2"/>
    <steps class="ArrayList">
      <object class="Group" id="3">
        <name class="String">Login OpenCart</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="4"/>
        <steps class="ArrayList">
          <object class="Group" id="5">
            <name class="String">Assign Input OC Login</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="6"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="7">
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
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="8">
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
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="9"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="6"/>
                <to idref="7"/>
              </object>
              <object class="TransitionEdge">
                <from idref="7"/>
                <to idref="8"/>
              </object>
              <object class="TransitionEdge">
                <from idref="8"/>
                <to idref="9"/>
              </object>
            </edges>
          </object>
          <object class="SnippetStep" id="10">
            <name>
              <null/>
            </name>
            <snippetName class="String">OpenCart_Login</snippetName>
            <snippetStepComment>
              <null/>
            </snippetStepComment>
          </object>
          <object class="Group" id="11">
            <name class="String">If error login</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="12"/>
            <steps class="ArrayList">
              <object class="Try" id="13">
                <property name="name" class="String">Opencart_Login has error?</property>
              </object>
              <object class="Transition" serializationversion="3" id="14">
                <property name="name" class="String">Test if Login Error</property>
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
                      <property name="name" class="String">Opencart_Login has error?</property>
                    </property>
                  </property>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="End" id="15"/>
            </steps>
            <blockEndStep class="BlockEndStep" id="16"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="12"/>
                <to idref="13"/>
              </object>
              <object class="TransitionEdge">
                <from idref="13"/>
                <to idref="14"/>
              </object>
              <object class="TransitionEdge">
                <from idref="13"/>
                <to idref="15"/>
              </object>
              <object class="TransitionEdge">
                <from idref="14"/>
                <to idref="16"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="17"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="4"/>
            <to idref="5"/>
          </object>
          <object class="TransitionEdge">
            <from idref="5"/>
            <to idref="10"/>
          </object>
          <object class="TransitionEdge">
            <from idref="10"/>
            <to idref="11"/>
          </object>
          <object class="TransitionEdge">
            <from idref="11"/>
            <to idref="17"/>
          </object>
        </edges>
      </object>
      <object class="End" id="18"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="3"/>
      </object>
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="18"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
