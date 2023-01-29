.class Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector$1;
.super Ljava/lang/Object;
.source "ScbmHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;

    .line 123
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector$1;->this$1:Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector$1;->this$1:Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;->-$$Nest$fgetmFeatureConnector(Lcom/qualcomm/qti/internal/telephony/ScbmHandler$ImsFeatureConnector;)Lcom/android/ims/FeatureConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/FeatureConnector;->connect()V

    .line 127
    return-void
.end method
