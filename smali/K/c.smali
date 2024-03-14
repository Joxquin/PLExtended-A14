.class public final LK/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/d;


# static fields
.field public static final a:LK/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LK/c;

    invoke-direct {v0}, LK/c;-><init>()V

    sput-object v0, LK/c;->a:LK/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 p0, 0x0

    add-int/2addr p2, p0

    const/4 v0, 0x2

    move v1, p0

    move v2, v0

    :goto_0
    if-ge v1, p2, :cond_2

    if-ne v2, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    sget-object v3, LK/g;->a:LK/f;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    move v2, v0

    goto :goto_1

    :cond_0
    :pswitch_0
    move v2, p0

    goto :goto_1

    :cond_1
    :pswitch_1
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
