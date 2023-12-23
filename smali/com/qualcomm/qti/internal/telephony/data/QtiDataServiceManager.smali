.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
.super Lcom/android/internal/telephony/data/DataServiceManager;
.source "QtiDataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;
    }
.end annotation


# static fields
.field public static final DATA_CALL_RESPONSE:Ljava/lang/String; = "data_call_response"

.field private static final DEFAULT_PHONE_INDEX:I = 0x0

.field private static final EVENT_GET_QOS_PARAMETERS_DONE:I = 0x65

.field private static final EVENT_MODEM_RESET:I = 0x68

.field private static final EVENT_QOS_PARAMETERS_CHANGED:I = 0x66

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x67

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x69

.field private static final PROPERTY_FETCH_QOS_PARAMETERS:Ljava/lang/String; = "persist.vendor.radio.fetchqos"


# instance fields
.field private mIsFetchQosPropertyEnabled:Z

.field private final mQosParametersChangedRegistrants:Landroid/os/RegistrantList;

.field mQosParamsbyCid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$87NVSAMNPuFVoOXwumCjNrmrhjc(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->onQtiPhoneReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestQosParameters(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;IILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->requestQosParameters(IILandroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "transportType"    # I

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataServiceManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;I)V

    .line 69
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParametersChangedRegistrants:Landroid/os/RegistrantList;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mIsFetchQosPropertyEnabled:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Qti"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mTag:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->updateQosPropertyValue()V

    .line 84
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->shouldFetchQosParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->registerReceivers()V

    .line 86
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->registerListenerForQtiPhoneReady()V

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 57
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mMessageMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Landroid/os/Message;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # I

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private messageToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .line 542
    packed-switch p1, :pswitch_data_0

    .line 550
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 548
    :pswitch_0
    const-string v0, "EVENT_RADIO_UNAVAILABLE"

    return-object v0

    .line 546
    :pswitch_1
    const-string v0, "EVENT_MODEM_RESET"

    return-object v0

    .line 544
    :pswitch_2
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onGetQosParametersResponse(Landroid/os/Message;)V
    .locals 8
    .param p1, "qosParamsMsg"    # Landroid/os/Message;

    .line 304
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 305
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_0

    .line 308
    return-void

    .line 311
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 312
    .local v1, "onCompleteMessage":Landroid/os/Message;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 317
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 318
    .local v2, "setupDataCallResultCode":I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mTag:Ljava/lang/String;

    const-string v4, "onGetQosParametersResponse, caught exception."

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 325
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    .line 326
    .local v3, "qosParams":Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
    if-nez v3, :cond_3

    .line 329
    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 333
    :cond_3
    nop

    .line 334
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "data_call_response"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataCallResponse;

    .line 337
    .local v4, "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v4}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v6

    invoke-virtual {p0, v6, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->addToQosParamsMap(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V

    .line 340
    nop

    .line 341
    invoke-virtual {p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->appendQosParamsToDataCallResponse(Landroid/telephony/data/DataCallResponse;Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)Landroid/telephony/data/DataCallResponse;

    move-result-object v6

    .line 344
    .local v6, "modifiedDataCallResponse":Landroid/telephony/data/DataCallResponse;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 348
    return-void

    .line 313
    .end local v2    # "setupDataCallResultCode":I
    .end local v3    # "qosParams":Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
    .end local v4    # "dataCallResponse":Landroid/telephony/data/DataCallResponse;
    .end local v6    # "modifiedDataCallResponse":Landroid/telephony/data/DataCallResponse;
    :cond_4
    :goto_0
    const-string v2, "Unable to find the message for setup data call response."

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->loge(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private onQosParametersChanged(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 475
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 476
    .local v0, "cid":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    .line 477
    .local v1, "qosParams":Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParametersChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Landroid/util/Pair;

    .line 479
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 477
    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 480
    return-void
.end method

.method private onQtiPhoneReady()V
    .locals 1

    .line 146
    const-string v0, "onQtiPhoneReady"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->registerQosCallback()V

    .line 148
    return-void
.end method

.method private registerQosCallback()V
    .locals 3

    .line 155
    :try_start_0
    const-string v0, "Registering QoS callback"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    .line 157
    .local v0, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;

    const-string v2, "onQosParametersChanged"

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V

    .line 159
    .local v1, "callback":Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->registerDataServiceCallbackForQos(ILcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .end local v1    # "callback":Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "registerQosCallback: Error connecting to qti phone."

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->loge(Ljava/lang/String;)V

    .line 163
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private registerReceivers()V
    .locals 3

    .line 120
    const-string v0, "Register modem events"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x69

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method private requestQosParameters(IILandroid/os/Message;)V
    .locals 4
    .param p1, "cid"    # I
    .param p2, "setupDataCallResultCode"    # I
    .param p3, "setupDataCallonCompleteMessage"    # Landroid/os/Message;

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request QoS params for cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    .line 276
    .local v0, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 278
    .local v1, "qosParamsMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getQosParameters(IILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0    # "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .end local v1    # "qosParamsMsg":Landroid/os/Message;
    nop

    .line 288
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mTag:Ljava/lang/String;

    const-string v2, "requestQosParameters, caught error while connecting to qtiphone."

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-virtual {p0, p3, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 286
    return-void

    .line 279
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestQosParameters, caught error while fetching parameters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, p3, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 282
    return-void
.end method

.method private resetQosParamsCache(I)V
    .locals 2
    .param p1, "what"    # I

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting QoS parameters cache due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->messageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateQosPropertyValue()V
    .locals 3

    .line 95
    nop

    .line 96
    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v0

    const-string v2, "persist.vendor.radio.fetchqos"

    .line 98
    invoke-virtual {v0, v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mIsFetchQosPropertyEnabled:Z

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsFetchQosPropertyEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mIsFetchQosPropertyEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while reading Qos property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->loge(Ljava/lang/String;)V

    .line 103
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method addToQosParamsMap(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "qosParams"    # Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    .line 488
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added QosParameters for cid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into the map. QoS parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 492
    if-nez p2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 493
    return-void

    .line 490
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method appendQosParamsToDataCallResponse(Landroid/telephony/data/DataCallResponse;Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)Landroid/telephony/data/DataCallResponse;
    .locals 3
    .param p1, "oldDataCallResponse"    # Landroid/telephony/data/DataCallResponse;
    .param p2, "qosParams"    # Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    .line 359
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendQosParamsToDataCallResponse:, DataCallResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", QoS parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 367
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    .line 368
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getCause()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getRetryDurationMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setRetryDurationMillis(J)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getLinkStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getProtocolType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getDnsAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getGatewayAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPcscfAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV4(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setMtuV6(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getHandoverFailureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setHandoverFailureMode(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setPduSessionId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {p2}, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->getDefaultQos()Landroid/telephony/data/Qos;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setDefaultQos(Landroid/telephony/data/Qos;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {p2}, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->getQosBearerSessions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setQosBearerSessions(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setSliceInfo(Landroid/telephony/data/NetworkSliceInfo;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Landroid/telephony/data/DataCallResponse;->getTrafficDescriptors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/data/DataCallResponse$Builder;->setTrafficDescriptors(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    .line 367
    return-object v0

    .line 360
    :cond_1
    :goto_0
    return-object p1
.end method

.method public appendQosParamsToDataCallResponseIfNeeded(ILandroid/telephony/data/DataProfile;Landroid/telephony/data/DataCallResponse;)Landroid/telephony/data/DataCallResponse;
    .locals 2
    .param p1, "cid"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "sourceDataCallResponse"    # Landroid/telephony/data/DataCallResponse;

    .line 400
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->shouldFetchQosParameters()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p2}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendQosParamsToDataCallResponseIfNeeded:, cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DataProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DataCallResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 413
    nop

    .line 414
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->getQosParamsFromMap(I)Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    move-result-object v0

    .line 413
    invoke-virtual {p0, p3, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->appendQosParamsToDataCallResponse(Landroid/telephony/data/DataCallResponse;Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    return-object v0

    .line 405
    :cond_1
    :goto_0
    return-object p3
.end method

.method getQosParamsFromMap(I)Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
    .locals 4
    .param p1, "cid"    # I

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "result":Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No QosParameters available for cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in the map."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 522
    monitor-exit v1

    const/4 v1, 0x0

    return-object v1

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    move-object v0, v2

    .line 525
    monitor-exit v1

    .line 526
    return-object v0

    .line 525
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 254
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 251
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->resetQosParamsCache(I)V

    .line 252
    goto :goto_0

    .line 243
    :pswitch_1
    const-string v0, "EVENT_QOS_PARAMETERS_CHANGED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->onQosParametersChanged(Landroid/os/Message;)V

    .line 245
    goto :goto_0

    .line 239
    :pswitch_2
    const-string v0, "EVENT_GET_QOS_PARAMETERS_DONE"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->onGetQosParametersResponse(Landroid/os/Message;)V

    .line 241
    nop

    .line 256
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerForQosParametersChanged(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .line 561
    if-eqz p1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParametersChangedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 564
    :cond_0
    return-void
.end method

.method registerListenerForQtiPhoneReady()V
    .locals 1

    .line 135
    const-string v0, "registerListenerForQtiPhoneReady"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;)V

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->addOnQtiPhoneReadyListener(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;)V

    .line 137
    return-void
.end method

.method removeFromQosParamsMap(I)V
    .locals 3
    .param p1, "cid"    # I

    .line 501
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    monitor-enter v0

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParamsbyCid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed QosParameters for cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QosParameters for cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not present in map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 508
    :goto_0
    monitor-exit v0

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .locals 18
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "pduSessionId"    # I
    .param p8, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p9, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p10, "matchAllRuleAllowed"    # Z
    .param p11, "onCompleteMessage"    # Landroid/os/Message;

    .line 198
    move-object/from16 v1, p0

    move-object/from16 v2, p11

    const-string v0, "setupDataCall from QtiDataServiceManager"

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mBound:Z

    const/4 v3, 0x4

    if-nez v0, :cond_0

    .line 200
    const-string v0, "setupDataCall: Data service not bound."

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->loge(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 202
    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;

    const-string v4, "setupDataCall"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V

    move-object v4, v0

    .line 208
    .local v4, "callback":Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;
    if-eqz v2, :cond_4

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->shouldFetchQosParameters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    nop

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    .line 215
    .local v0, "isIms":Z
    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupDataCall request, apnmask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isIms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 216
    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->log(Ljava/lang/String;)V

    .line 220
    .end local v0    # "isIms":Z
    :cond_3
    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_4
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {v1, v0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v5, 0x927c0

    invoke-virtual {v1, v0, v5, v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    iget-object v5, v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mIDataService:Landroid/telephony/data/IDataService;

    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, v4

    invoke-interface/range {v5 .. v17}, Landroid/telephony/data/IDataService;->setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "setupDataCall: Cannot invoke setupDataCall on data service."

    invoke-virtual {v1, v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->loge(Ljava/lang/String;)V

    .line 230
    iget-object v5, v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mMessageMap:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendCompleteMessage(Landroid/os/Message;I)V

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method shouldFetchQosParameters()Z
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mIsFetchQosPropertyEnabled:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->getTransportType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 111
    :goto_0
    return v1
.end method

.method public unregisterForQosParametersChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->mQosParametersChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 575
    :cond_0
    return-void
.end method
