.class public Lcom/google/android/gms/audiomodem/DecodedToken;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/audiomodem/DecodedToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ED:[B

.field private final EE:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/audiomodem/a;

    invoke-direct {v0}, Lcom/google/android/gms/audiomodem/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/audiomodem/DecodedToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[BI)V
    .locals 0
    .param p1    # I
    .param p2    # [B
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->ED:[B

    iput p3, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->EE:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->EE:I

    return v0
.end method

.method public getToken()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->ED:[B

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/audiomodem/DecodedToken;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/audiomodem/a;->a(Lcom/google/android/gms/audiomodem/DecodedToken;Landroid/os/Parcel;I)V

    return-void
.end method
