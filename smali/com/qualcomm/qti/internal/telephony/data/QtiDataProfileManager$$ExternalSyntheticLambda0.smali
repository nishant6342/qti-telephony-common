.class public final synthetic Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda0;
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

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->lambda$overrideDataProfileIpProtocolIfNeeded$0(Landroid/telephony/data/DataProfile;)Z

    move-result p1

    return p1
.end method
