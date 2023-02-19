.class Lcom/android/internal/telephony/vendor/VendorSubscriptionController$1;
.super Landroid/os/Handler;
.source "VendorSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/vendor/VendorSubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/vendor/VendorSubscriptionController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/vendor/VendorSubscriptionController;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController$1;->this$0:Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 114
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController$1;->this$0:Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    const-string v0, "EVENT_RADIO_CAPABILITY_AVAILABLE"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->-$$Nest$mlogd(Lcom/android/internal/telephony/vendor/VendorSubscriptionController;Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController$1;->this$0:Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->setRadioCapabilityIfRequired()V

    :goto_0
    return-void
.end method
