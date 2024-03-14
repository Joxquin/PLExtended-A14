.class public final LF2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:LF2/v;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(LF2/v;Lk/R0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LF2/u;->a:Landroid/util/SparseArray;

    iput-object p1, p0, LF2/u;->b:LF2/v;

    const/16 p1, 0x1a

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lk/R0;->i(II)I

    move-result p1

    iput p1, p0, LF2/u;->c:I

    const/16 p1, 0x2f

    invoke-virtual {p2, p1, v0}, Lk/R0;->i(II)I

    move-result p1

    iput p1, p0, LF2/u;->d:I

    return-void
.end method
