.class public Lcom/android/vcard/VCardEntryCounter;
.super Ljava/lang/Object;
.source "VCardEntryCounter.java"

# interfaces
.implements Lcom/android/vcard/VCardInterpreter;


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/vcard/VCardEntryCounter;->mCount:I

    return v0
.end method

.method public onEntryEnded()V
    .locals 1

    iget v0, p0, Lcom/android/vcard/VCardEntryCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/vcard/VCardEntryCounter;->mCount:I

    return-void
.end method

.method public onEntryStarted()V
    .locals 0

    return-void
.end method

.method public onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    .locals 0
    .param p1    # Lcom/android/vcard/VCardProperty;

    return-void
.end method

.method public onVCardEnded()V
    .locals 0

    return-void
.end method

.method public onVCardStarted()V
    .locals 0

    return-void
.end method
