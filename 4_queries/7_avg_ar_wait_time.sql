SELECT avg(assistance_requests.started_at - assistance_requests.created_at) as average_wait_time
FROM assistance_requests;
