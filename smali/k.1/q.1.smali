.class public final Lk/q;
.super Lk/v0;
.source "SourceFile"


# instance fields
.field public a:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public e:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x2

    .line 3
    invoke-direct {p0, v0}, Lk/v0;-><init>(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lk/q;->a:Z

    return-void
.end method

.method public constructor <init>(Lk/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lk/v0;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-boolean p1, p1, Lk/q;->a:Z

    iput-boolean p1, p0, Lk/q;->a:Z

    return-void
.end method
