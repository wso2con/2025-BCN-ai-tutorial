import wso2con_assistant.wso2conBackend;

import ballerinax/openai.chat;
import ballerinax/openai.embeddings;
import ballerinax/pinecone.vector;

final chat:Client openaiClient = check new ({auth: {token: openaiKey}});
final wso2conBackend:Client wso2conbackendClient = check new ({auth: {clientId: wso2conBackendClientId, clientSecret: wso2conBackendClientSecret, tokenUrl: wso2conBackendTokenUrl}}, wso2conBackendServiceUrl);
final vector:Client productDataVectorStore = check new ({apiKey: pineconeApiKey}, pineconeServiceUrl);
final embeddings:Client embeddingsClient = check new ({auth: {token: openaiKey}});
