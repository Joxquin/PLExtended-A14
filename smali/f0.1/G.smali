.class public Lf0/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/slice/SliceItem;

.field public b:Landroidx/slice/SliceItem;

.field public c:Landroidx/slice/SliceItem;

.field public d:Landroidx/slice/SliceItem;

.field public final e:I


# direct methods
.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroidx/slice/SliceItem;

    .line 3
    iget-object v1, p1, Landroidx/slice/Slice;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "slice"

    const/4 v3, 0x0

    .line 4
    invoke-direct {v0, p1, v2, v3, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lf0/G;->c(Landroidx/slice/SliceItem;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lf0/G;->e:I

    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lf0/G;->c(Landroidx/slice/SliceItem;)V

    .line 8
    iput p2, p0, Lf0/G;->e:I

    return-void
.end method


# virtual methods
.method public a(Lf0/J;Lf0/O;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b()I
    .locals 2

    iget-object p0, p0, Lf0/G;->c:Landroidx/slice/SliceItem;

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->d()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, p0

    :cond_1
    return v0
.end method

.method public final c(Landroidx/slice/SliceItem;)V
    .locals 4

    iput-object p1, p0, Lf0/G;->a:Landroidx/slice/SliceItem;

    iget-object v0, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "int"

    const-string v2, "color"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ld0/e;->j(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Lf0/G;->b:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v0

    const-string v2, "layout_direction"

    invoke-static {v0, v1, v2, v3}, Ld0/e;->j(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Lf0/G;->c:Landroidx/slice/SliceItem;

    :cond_1
    const-string v0, "text"

    const-string v1, "content_description"

    invoke-static {p1, v0, v1}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Lf0/G;->d:Landroidx/slice/SliceItem;

    return-void
.end method
