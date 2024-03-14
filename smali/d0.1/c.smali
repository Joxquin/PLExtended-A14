.class public final synthetic Ld0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Ld0/c;->a:I

    iput-object p1, p0, Ld0/c;->b:Ljava/lang/String;

    iput-object p2, p0, Ld0/c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/slice/SliceItem;)Z
    .locals 4

    iget v0, p0, Ld0/c;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, Ld0/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p0, p0, Ld0/c;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-static {p1, p0}, Ld0/e;->a(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v2, :cond_1

    iget-object p0, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    return v1

    :goto_3
    invoke-static {p1, p0}, Ld0/e;->a(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v2, :cond_4

    iget-object p0, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_4

    :cond_3
    move p0, v3

    goto :goto_5

    :cond_4
    :goto_4
    move p0, v1

    :goto_5
    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    move v1, v3

    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
