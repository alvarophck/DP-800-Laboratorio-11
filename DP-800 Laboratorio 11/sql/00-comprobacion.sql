-- 00. Comprobar el punto de partida (tabla con embeddings, credencial y modelo de embeddings)

SELECT COUNT(*) AS TotalReviews, COUNT(ReviewVector) AS ReviewsWithEmbeddings
FROM dbo.ProductReview;
GO

SELECT 'Credencial' AS Objeto, name FROM sys.database_scoped_credentials
UNION ALL
SELECT 'Modelo externo', name FROM sys.external_models;
GO
