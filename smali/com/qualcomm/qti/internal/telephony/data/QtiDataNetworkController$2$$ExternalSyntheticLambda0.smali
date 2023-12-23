.class public final synthetic Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->lambda$onReceive$0(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p1

    return p1
.end method
