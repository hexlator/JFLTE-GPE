.class public final Lcom/google/android/gms/wallet/InstrumentInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/InstrumentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aKU:Ljava/lang/String;

.field private aKV:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/h;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/InstrumentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->aKU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->aKV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInstrumentDetails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->aKV:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->aKU:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/InstrumentInfo;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/h;->a(Lcom/google/android/gms/wallet/InstrumentInfo;Landroid/os/Parcel;I)V

    return-void
.end method
