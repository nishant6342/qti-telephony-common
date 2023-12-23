.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;
.super Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;
.source "QtiDataServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiCellularDataServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 419
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 421
    return-void
.end method


# virtual methods
.method public bridge synthetic getTag()Ljava/lang/String;
    .locals 1

    .line 417
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onApnUnthrottled(Ljava/lang/String;)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onApnUnthrottled(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onDataCallListChanged(Ljava/util/List;)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onDataCallListChanged(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    return-void
.end method

.method public bridge synthetic onDeactivateDataCallComplete(I)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onDeactivateDataCallComplete(I)V

    return-void
.end method

.method public bridge synthetic onHandoverCancelled(I)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onHandoverCancelled(I)V

    return-void
.end method

.method public bridge synthetic onHandoverStarted(I)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onHandoverStarted(I)V

    return-void
.end method

.method public onQosParametersChanged(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "qosParams"    # Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    .line 460
    if-nez p2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    const-string v1, "onQosParametersChanged, qosParams is null"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V

    .line 464
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosParametersChanged, cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qosParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    const/16 v1, 0x66

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->sendMessage(Landroid/os/Message;)Z

    .line 468
    return-void
.end method

.method public bridge synthetic onRequestDataCallListComplete(ILjava/util/List;)V
    .locals 0

    .line 417
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onRequestDataCallListComplete(ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onSetDataProfileComplete(I)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onSetDataProfileComplete(I)V

    return-void
.end method

.method public bridge synthetic onSetInitialAttachApnComplete(I)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;->onSetInitialAttachApnComplete(I)V

    return-void
.end method

.method public onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "response"    # Landroid/telephony/data/DataCallResponse;

    .line 427
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QtiDataServiceManager: onSetupDataCallComplete, resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->removeMessages(ILjava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 434
    .local v0, "msg":Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 435
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data_call_response"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 438
    .local v1, "isIms":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response isIms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V

    .line 441
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 442
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->shouldFetchQosParameters()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 443
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    invoke-virtual {p2}, Landroid/telephony/data/DataCallResponse;->getId()I

    move-result v3

    invoke-static {v2, v3, p1, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->-$$Nest$mrequestQosParameters(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;IILandroid/os/Message;)V

    goto :goto_1

    .line 445
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    invoke-static {v2, v0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Landroid/os/Message;I)V

    .line 447
    .end local v1    # "isIms":Z
    :goto_1
    goto :goto_2

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    const-string v2, "Unable to find the message for setup data call response."

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;Ljava/lang/String;)V

    .line 450
    :goto_2
    return-void
.end method
