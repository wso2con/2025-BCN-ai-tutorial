import ballerina/http;

final http:Client wso2conBackendClient = check new (wso2conBackendServiceUrl, auth = {tokenUrl: wso2conBackendTokenUrl, clientId: wso2conBackendClientId, clientSecret: wso2conBackendClientSecret});
