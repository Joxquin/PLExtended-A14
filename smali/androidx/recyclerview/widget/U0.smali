.class public final Landroidx/recyclerview/widget/U0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LL/d;


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/g0;

.field public c:Landroidx/recyclerview/widget/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LL/d;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LL/d;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/U0;->d:LL/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/U0;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/U0;->d:LL/d;

    invoke-virtual {v0}, LL/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/U0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/U0;

    invoke-direct {v0}, Landroidx/recyclerview/widget/U0;-><init>()V

    :cond_0
    return-object v0
.end method
