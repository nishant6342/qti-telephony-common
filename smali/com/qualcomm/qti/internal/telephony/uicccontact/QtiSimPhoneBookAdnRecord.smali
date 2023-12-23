.class public Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;
.super Ljava/lang/Object;
.source "QtiSimPhoneBookAdnRecord.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "QtiSimPhoneBookAdnRecord"


# instance fields
.field public mAdNumCount:I

.field public mAdNumbers:[Ljava/lang/String;

.field public mAlphaTag:Ljava/lang/String;

.field public mEmailCount:I

.field public mEmails:[Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mRecordIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    .line 33
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 35
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    .line 36
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    return-void
.end method

.method public static ConvertToPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 71
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_0
    nop

    .line 71
    const/16 v0, 0x65

    const/16 v1, 0x3b

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 72
    const/16 v1, 0x54

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 73
    const/16 v1, 0x3f

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0
.end method

.method public static ConvertToRecordNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 77
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_0
    nop

    .line 77
    const/16 v0, 0x3b

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 78
    const/16 v1, 0x2c

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 79
    const/16 v1, 0x4e

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAdNumbers()[Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumAdNumbers()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    return v0
.end method

.method public getNumEmails()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordIndex()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SimPhoneBookAdnRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "index ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mRecordIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v3, "null"

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ", email count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", email = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", ad number count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", ad number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
