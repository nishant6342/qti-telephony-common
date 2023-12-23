.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;
.super Ljava/lang/Object;
.source "QtiDataNetworkController.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 133
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const-string v1, "ExtTelephonyService connected"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 137
    const/16 v0, 0x10

    const/16 v1, 0x16

    const/16 v2, 0xb

    const/16 v3, 0xa

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    .line 142
    .local v0, "events":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iget-object v4, v4, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    invoke-virtual {v3, v1, v4, v0}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Lcom/qti/extphone/Client;)V

    .line 145
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/qti/extphone/ExtTelephonyManager;->getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getQtiRadioCapability, remote exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 151
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/qti/extphone/ExtTelephonyManager;->getDdsSwitchCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 153
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 154
    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qti/extphone/ExtTelephonyManager;->isEpdgOverCellularDataSupported(I)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V

    .line 155
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCiwlanFeatureEnabledByPlatform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    goto :goto_1

    .line 156
    :catch_1
    move-exception v2

    .line 157
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEpdgOverCellularDataSupported Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 160
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->getSecureModeStatus(Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    goto :goto_2

    .line 161
    :catch_2
    move-exception v2

    .line 162
    .restart local v2    # "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecureModeStatus, remote exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 164
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtTelephonyService disconnected. Client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->unregisterCallback(Lcom/qti/extphone/ExtPhoneCallbackListener;)V

    .line 170
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V

    .line 171
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Lcom/qti/extphone/Client;)V

    .line 172
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const v1, 0x420c8

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 174
    return-void
.end method
