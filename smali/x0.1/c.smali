.class public Lx0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lx0/b;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lx0/b;

    invoke-direct {v0}, Lx0/b;-><init>()V

    iput-object v0, p0, Lx0/c;->a:Lx0/b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lx0/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk0/O;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lx0/b;

    invoke-direct {v0}, Lx0/b;-><init>()V

    iput-object v0, p0, Lx0/c;->a:Lx0/b;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lx0/c;->b:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lx0/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lx0/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lx0/c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx0/c;->a:Lx0/b;

    iput p1, v0, Lx0/b;->a:F

    iput p2, v0, Lx0/b;->b:F

    iput-object p3, v0, Lx0/b;->c:Ljava/lang/Object;

    iput-object p4, v0, Lx0/b;->d:Ljava/lang/Object;

    iput p5, v0, Lx0/b;->e:F

    iput p6, v0, Lx0/b;->f:F

    iput p7, v0, Lx0/b;->g:F

    invoke-virtual {p0, v0}, Lx0/c;->a(Lx0/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
