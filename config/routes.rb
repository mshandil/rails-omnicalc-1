Rails.application.routes.draw do
  get("/", { controller: "zebra", action: "hp" })
  get("/square/new", { controller: "zebra", action: "hp" }) 
  get("/square/results", { controller: "zebra", action: "square" }) 
  get("/square_root/new", { controller: "zebra", action: "root" }) 
  get("/square_root/results", { controller: "zebra", action: "sq_root" })
  get("/payment/new", { controller: "zebra", action: "payment" }) 
  get("/payment/results", { controller: "zebra", action: "pay_result" }) 
  get("/random/new", { controller: "zebra", action: "random" }) 
  get("/random/results", { controller: "zebra", action: "random_res" }) 
end
