import ballerinax/openai.embeddings;
import ballerinax/pinecone.vector;

function retrieveProductData(string question) returns string|error {
    embeddings:CreateEmbeddingResponse embeddingsCreateembeddingresponse = check embeddingsClient->/embeddings.post({model: embeddingModelName, input: question});
    vector:QueryResponse vectorQueryresponse = check productDataVectorStore->/query.post({namespace: "ai", topK: 5, includeMetadata: true, vector: embeddingsCreateembeddingresponse.data[0].embedding});
    return vectorQueryresponse.matches.toString();
}
