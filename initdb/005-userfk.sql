-- Primeiro, altere a tabela 'feedback' para adicionar a nova coluna 'user_id'
ALTER TABLE public.feedback
ADD COLUMN created_by integer;

-- Em seguida, crie a chave estrangeira que faz referência à tabela 'user'
ALTER TABLE public.feedback
ADD CONSTRAINT fk_feedback_user
FOREIGN KEY (created_by) REFERENCES public.user(id);
