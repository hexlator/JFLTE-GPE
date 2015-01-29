.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFirstAmbientIndex:I

.field private final mInterceptedKeys:[Ljava/lang/String;

.field private final mKeys:[Ljava/lang/String;

.field private final mVisibilityOverrides:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1    # [Ljava/lang/String;
    .param p2    # [Ljava/lang/String;
    .param p3    # Landroid/os/Bundle;
    .param p4    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    iput p4, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    iput-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    iput-object p3, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstAmbientIndex()I
    .locals 1

    iget v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    return v0
.end method

.method public getInterceptedKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getVisibilityOverrides()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mFirstAmbientIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
