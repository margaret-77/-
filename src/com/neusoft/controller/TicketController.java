package com.neusoft.controller;

public class TicketController {

   /* @Autowired
    private TripsService tripsService;

    @Autowired
    private TripsDao tripsDao;

    @Autowired
    private UserDao userDao;
    *//**
     * Ԥ����Ʊ
     * @param data
     * @return
     *//*
    @PostMapping("/buyticket")
    public Result buyTicket(@RequestBody JSONObject data){
        //��ȡǰ�˴���������
        String username = data.getString("username");
        String carNum = data.getString("carNum");
        String startTime = data.getString("startTime");

        Trips trips = tripsDao.getTripsInfoByCarNumAndStartTime(carNum, startTime);
        int carInfoId = trips.getId();
        //        int carInfoId  = data.getInteger("id");
        //���빺Ʊservice
        Result result = tripsService.buyTicket(username, carInfoId, carNum);
        Order order = (Order) ((Map<String, Object>)result.getData()).get("order");
        return tripsService.payMoney(order.getId());
    }


    *//**
     *��Ʊ
     * @param data
     * @return
     *//*
    @PostMapping("/ticketrefund")
    public Result ticketRefund(@RequestBody JSONObject data){
//       ��ȡ��������Ϣ���ж�����ѯ personId  carNum  orginLocation  destinationLocation
//        int personId = 0;
        String username = data.getString("username");
        int personId = userDao.getUserByUsername(username).getPersonId();
        String carNum = data.getString("carNum");
        String startTime = data.getString("startTime");
        String reachTime = data.getString("reachTime");
        Result result = tripsService.ticketRetund(personId, carNum, startTime, reachTime);
        return result;
    }

    @PostMapping("/paymoney")
    public Result payMoney(@RequestBody JSONObject data){
        int orderId = data.getInteger("orderId");
        return tripsService.payMoney(orderId);
    }*/
}
