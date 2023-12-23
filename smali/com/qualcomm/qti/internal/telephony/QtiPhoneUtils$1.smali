.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;
.super Ljava/lang/Object;
.source "QtiPhoneUtils.java"

# interfaces
.implements Lcom/qti/extphone/ServiceCallback;


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

    .line 153
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 157
    const/4 v0, 0x6

    const/16 v1, 0x15

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 160
    .local v0, "events":[I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Landroid/content/Context;

    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    iget-object v4, v4, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 160
    invoke-virtual {v2, v3, v4, v0}, Lcom/qti/extphone/ExtTelephonyManager;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;Lcom/qti/extphone/Client;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExtTelManagerServiceCallback: service connected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiPhoneUtils"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$mqueryDsdsToSsConfig(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lcom/qti/extphone/ExtTelephonyManager;->isSmartDdsSwitchFeatureAvailable()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fputmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;Z)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartDdsSwitchFeatureAvailable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$fgetmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartDdsSwitchFeatureAvailable exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->-$$Nest$sfgetsReadyListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;

    .line 173
    .local v2, "listener":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;
    invoke-interface {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;->onQtiPhoneReady()V

    .line 174
    .end local v2    # "listener":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;
    goto :goto_1

    .line 175
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 179
    const-string v0, "QtiPhoneUtils"

    const-string v1, "mExtTelManagerServiceCallback: service disconnected"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method
