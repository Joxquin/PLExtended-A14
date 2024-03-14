.class public final Lf0/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/slice/SliceSpec;

    const-string v1, "androidx.app.slice.BASIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    new-instance v1, Landroidx/slice/SliceSpec;

    const-string v3, "androidx.app.slice.LIST"

    invoke-direct {v1, v3, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lq/h;

    sget-object v3, Lb0/g;->a:Landroidx/slice/SliceSpec;

    sget-object v4, Lb0/g;->b:Landroidx/slice/SliceSpec;

    sget-object v5, Lb0/g;->c:Landroidx/slice/SliceSpec;

    filled-new-array {v3, v4, v5, v0, v1}, [Landroidx/slice/SliceSpec;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lq/h;-><init>(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lq/h;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sput-object v2, Lf0/H;->a:Lq/h;

    return-void
.end method
