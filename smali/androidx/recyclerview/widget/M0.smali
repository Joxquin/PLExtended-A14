.class public final Landroidx/recyclerview/widget/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/M0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/M0;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Landroidx/recyclerview/widget/N0;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/N0;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :goto_0
    new-instance p0, Landroidx/recyclerview/widget/P0;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/P0;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/M0;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Landroidx/recyclerview/widget/N0;

    return-object p0

    :goto_0
    new-array p0, p1, [Landroidx/recyclerview/widget/P0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
