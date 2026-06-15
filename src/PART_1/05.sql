DROP TABLE IF EXISTS basics.app


CREATE TABLE IF NOT EXISTS basics.app(

  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  event TEXT NOT NULL
  --JSONB 

  meta JSONB DEFAULT "{}"::JSONB

  created_at TIMESTAMP DEFAULT NOW()
)


INSERT INTO basics.app (event,meta)
('sing_up',"{'broweaer':'chrome'}")


SELECT event,meta ->> FROM 'browser' AS browser FROM basics.app_events WHERE metadata ? 'browser'