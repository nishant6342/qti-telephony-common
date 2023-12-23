.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;
.super Lcom/qti/extphone/ExtPhoneCallbackListener;
.source "QtiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 183
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getQosParametersResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/QosParametersResult;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "qosParams"    # Lcom/qti/extphone/QosParametersResult;

    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    .line 347
    .local v1, "foundException":Z
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQosParametersResponse token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", qosParams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 350
    if-nez p4, :cond_0

    const-string v4, "null"

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v2, 0x0

    .line 354
    .local v2, "frameworkQosParameters":Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
    :try_start_0
    new-instance v3, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    invoke-direct {v3, p4}, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;-><init>(Lcom/qti/extphone/QosParametersResult;)V

    move-object v2, v3

    .line 355
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQosParametersResponse, qosParams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_1

    .line 356
    :catch_0
    move-exception v3

    .line 357
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string v4, "QtiPhoneUtils"

    const-string v5, "getQosParametersResponse, exception converting"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    const/4 v1, 0x1

    .line 361
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 362
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    .line 363
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    if-eqz v0, :cond_2

    .line 366
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    if-nez v1, :cond_1

    .line 367
    invoke-static {v0, v2, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_2

    .line 369
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "error while fetching QoS params"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 372
    :goto_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 374
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 375
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    monitor-exit v4

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 363
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "raf"    # I

    .line 207
    const/4 v0, 0x0

    .line 209
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQtiRadioCapabilityResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 216
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 220
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v2

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 212
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public networkScanResult(ILcom/qti/extphone/Token;IILjava/util/List;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # I
    .param p4, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qti/extphone/Token;",
            "II",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p5, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkScanResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiPhoneUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v0, Lcom/android/internal/telephony/NetworkScanResult;

    invoke-direct {v0, p3, p4, p5}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 337
    .local v0, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    .line 338
    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->notifyNetworkScanResult(Lcom/android/internal/telephony/NetworkScanResult;)V

    .line 339
    return-void
.end method

.method public onQosParametersChanged(IILcom/qti/extphone/QosParametersResult;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "qosParams"    # Lcom/qti/extphone/QosParametersResult;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQosParametersChanged slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qosParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v1, "QtiPhoneUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmCellularDataServiceCallbacks(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosParametersChanged, no callback for slotId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmCellularDataServiceCallbacks(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosParametersChanged, invalid callback for slotId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-void

    .line 395
    :cond_2
    const/4 v0, 0x0

    .line 397
    .local v0, "frameworkQosParameters":Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;
    :try_start_0
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    invoke-direct {v2, p3}, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;-><init>(Lcom/qti/extphone/QosParametersResult;)V

    move-object v0, v2

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQosParametersChanged, frameworkQosParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    nop

    .line 405
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmCellularDataServiceCallbacks(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;

    .line 407
    invoke-virtual {v1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->onQosParametersChanged(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V

    .line 408
    return-void

    .line 400
    :catch_0
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v3, "onQosParametersChanged, caught exception in conversion."

    invoke-static {v1, v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    return-void
.end method

.method public sendCdmaSmsResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Lcom/qti/extphone/SmsResult;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "sms"    # Lcom/qti/extphone/SmsResult;

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCdmaSmsResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    move-object v0, v2

    .line 191
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    invoke-virtual {p4}, Lcom/qti/extphone/SmsResult;->getMessageRef()I

    move-result v2

    .line 193
    invoke-virtual {p4}, Lcom/qti/extphone/SmsResult;->getAckPDU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/qti/extphone/SmsResult;->getErrorCode()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    move-object v2, v1

    .line 194
    .local v2, "ret":Lcom/android/internal/telephony/SmsResponse;
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 197
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 201
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    monitor-exit v3

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 191
    .end local v2    # "ret":Lcom/android/internal/telephony/SmsResponse;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public setCarrierInfoForImsiEncryptionResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/QRadioResponseInfo;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "info"    # Lcom/qti/extphone/QRadioResponseInfo;

    .line 227
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmQtiCarrierInfoResponse(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;->setCarrierInfoForImsiEncryptionResponse(Lcom/qti/extphone/QRadioResponseInfo;)V

    .line 228
    return-void
.end method

.method public setNetworkSelectionModeAutomaticResponse(ILcom/qti/extphone/Token;I)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 310
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    .line 312
    .local v2, "ret":Ljava/lang/Object;
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeAutomaticResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 314
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    .line 315
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    if-eqz p3, :cond_0

    .line 317
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeAutomaticResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    if-eqz v0, :cond_1

    .line 321
    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 322
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 325
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    monitor-exit v4

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 315
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public setNetworkSelectionModeManualResponse(ILcom/qti/extphone/Token;I)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 286
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    .line 288
    .local v2, "ret":Ljava/lang/Object;
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeManualResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 290
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    .line 291
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 292
    if-eqz p3, :cond_0

    .line 293
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNetworkSelectionModeManualResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    if-eqz v0, :cond_1

    .line 297
    invoke-static {v0, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 298
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 301
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    monitor-exit v4

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 291
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method

.method public startNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 235
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNetworkScanResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 237
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    move-object v0, v3

    .line 238
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    const/4 v2, 0x0

    .line 240
    .local v2, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    if-nez p3, :cond_0

    .line 241
    new-instance v3, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v5}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    move-object v2, v3

    goto :goto_0

    .line 244
    :cond_0
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startNetworkScanResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 247
    .end local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    .local v3, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :goto_0
    if-eqz v0, :cond_1

    .line 248
    invoke-static {v0, v3, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 249
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 251
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 252
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit v4

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 238
    .end local v3    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public stopNetworkScanResponse(ILcom/qti/extphone/Token;I)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "errorCode"    # I

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 260
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/4 v2, 0x0

    .line 262
    .local v2, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNetworkScanResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 264
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    move-object v0, v4

    .line 265
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    if-nez p3, :cond_0

    .line 267
    new-instance v3, Lcom/android/internal/telephony/NetworkScanResult;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v6, v4, v5}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    move-object v2, v3

    move-object v4, v2

    goto :goto_0

    .line 270
    :cond_0
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopNetworkScanResponse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 273
    .end local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    .local v4, "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :goto_0
    if-eqz v0, :cond_1

    .line 274
    invoke-static {v0, v4, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 275
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 278
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    monitor-exit v5

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 265
    .end local v4    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    .restart local v2    # "nsr":Lcom/android/internal/telephony/NetworkScanResult;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4
.end method
