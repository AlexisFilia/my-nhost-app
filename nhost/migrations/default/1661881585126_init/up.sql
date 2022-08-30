SET check_function_bodies = false;
CREATE TABLE public.test (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "userId" uuid NOT NULL
);
ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.test
    ADD CONSTRAINT "test_userId_fkey" FOREIGN KEY ("userId") REFERENCES auth.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
