.class public final Lg0/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq/f;

.field public final b:Landroid/util/SparseArray;

.field public final c:Lq/j;

.field public final d:Lq/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/f;

    invoke-direct {v0}, Lq/f;-><init>()V

    iput-object v0, p0, Lg0/G;->a:Lq/f;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lg0/G;->b:Landroid/util/SparseArray;

    new-instance v0, Lq/j;

    invoke-direct {v0}, Lq/j;-><init>()V

    iput-object v0, p0, Lg0/G;->c:Lq/j;

    new-instance v0, Lq/f;

    invoke-direct {v0}, Lq/f;-><init>()V

    iput-object v0, p0, Lg0/G;->d:Lq/f;

    return-void
.end method
