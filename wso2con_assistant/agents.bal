import ballerinax/ai.agent;

import nadheesh/wso2con_assistant.wso2conBackend;

# Get conference session information
# + headers - null
# + isCurrent -
# + additionalValues - Capture key value pairs
@agent:Tool
@display {label: "", iconPath: "https://bcentral-packageicons.azureedge.net/images/nadheesh_wso2con_assistant.wso2conBackend_0.1.0.png"}
isolated function getsessions() returns wso2conBackend:Event[]|error {
    wso2conBackend:Event[] wso2conbackendEvent = check wso2conbackendClient->/event\-agendas.get();
    return wso2conbackendEvent;
}

# get conference speaker information
# + headers - Headers to be sent with the request 
@agent:Tool
@display {label: "", iconPath: "https://bcentral-packageicons.azureedge.net/images/nadheesh_wso2con_assistant.wso2conBackend_0.1.0.png"}
isolated function getspeakers() returns wso2conBackend:Speaker[]|error {
    wso2conBackend:Speaker[] wso2conbackendSpeaker = check wso2conbackendClient->/speakers.get();
    return wso2conbackendSpeaker;
}

