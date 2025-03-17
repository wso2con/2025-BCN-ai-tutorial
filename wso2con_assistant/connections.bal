import ballerina/http;
import ballerinax/openai.chat;

final http:Client wso2conBackendClient = check new (wso2conBackendServiceUrl, auth = {tokenUrl: wso2conBackendTokenUrl, clientId: wso2conBackendClientId, clientSecret: wso2conBackendClientSecret});
final chat:Client openaiClient = check new ({auth: {token: openaiKey}});
