.class Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;
.super Ljava/lang/Object;
.source "ScbmHandler.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ScbmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsFeatureConnector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTOR_RETRY_DELAY_MS:I = 0x1388


# instance fields
.field private mFeatureConnector:Lcom/android/ims/FeatureConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/ims/FeatureConnector<",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureConnectorRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFeatureConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;)Lcom/android/ims/FeatureConnector;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    return-object p0
.end method

.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;I)V
    .locals 2
    .param p2, "phoneId"    # I

    .line 97
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector$1;-><init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->mFeatureConnectorRunnable:Ljava/lang/Runnable;

    .line 98
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Landroid/content/Context;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 98
    const-string v1, "ScbmHandler"

    invoke-static {v0, p2, v1, p0, p1}, Lcom/android/ims/ImsManager;->getConnector(Landroid/content/Context;ILjava/lang/String;Lcom/android/ims/FeatureConnector$Listener;Ljava/util/concurrent/Executor;)Lcom/android/ims/FeatureConnector;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->mFeatureConnector:Lcom/android/ims/FeatureConnector;

    .line 100
    invoke-virtual {p1}, Lcom/android/ims/FeatureConnector;->connect()V

    .line 101
    return-void
.end method


# virtual methods
.method public bridge synthetic connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 93
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->connectionReady(Lcom/android/ims/ImsManager;I)V

    return-void
.end method

.method public connectionReady(Lcom/android/ims/ImsManager;I)V
    .locals 2
    .param p1, "manager"    # Lcom/android/ims/ImsManager;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 105
    const-string v0, "ScbmHandler"

    const-string v1, "connectionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmQtiImsExtConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Lorg/codeaurora/ims/QtiImsExtConnector;

    move-result-object v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "connectionReady createQtiImsExtConnector"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$mcreateQtiImsExtConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmQtiImsExtConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Lorg/codeaurora/ims/QtiImsExtConnector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsExtConnector;->connect()V

    .line 111
    :cond_0
    return-void
.end method

.method public connectionUnavailable(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 115
    const-string v0, "ScbmHandler"

    const-string v1, "connectionUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->-$$Nest$fgetmQtiImsExtConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler;)Lorg/codeaurora/ims/QtiImsExtConnector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->mFeatureConnectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->this$0:Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->mFeatureConnectorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_0
    return-void
.end method
