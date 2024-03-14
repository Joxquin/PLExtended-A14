.class public final Ls1/a;
.super LU2/c;
.source "SourceFile"


# instance fields
.field public b:[Ls1/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LU2/c;-><init>()V

    sget-object v0, Ls1/b;->d:[Ls1/b;

    if-nez v0, :cond_1

    sget-object v0, LU2/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls1/b;->d:[Ls1/b;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ls1/b;

    sput-object v1, Ls1/b;->d:[Ls1/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Ls1/b;->d:[Ls1/b;

    iput-object v0, p0, Ls1/a;->b:[Ls1/b;

    const/4 v0, -0x1

    iput v0, p0, LU2/c;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget-object v0, p0, Ls1/a;->b:[Ls1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Ls1/a;->b:[Ls1/b;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    const/16 v3, 0x8

    invoke-static {v3}, LU2/a;->a(I)I

    move-result v3

    invoke-virtual {v2}, LU2/c;->b()I

    move-result v2

    invoke-static {v2}, LU2/a;->a(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method
