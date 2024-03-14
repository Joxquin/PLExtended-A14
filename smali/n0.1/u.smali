.class public final Ln0/u;
.super Lx0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lx0/b;

.field public final synthetic d:Lx0/c;

.field public final synthetic e:Lp0/b;


# direct methods
.method public constructor <init>(Lx0/b;Lx0/c;Lp0/b;)V
    .locals 0

    iput-object p1, p0, Ln0/u;->c:Lx0/b;

    iput-object p2, p0, Ln0/u;->d:Lx0/c;

    iput-object p3, p0, Ln0/u;->e:Lp0/b;

    invoke-direct {p0}, Lx0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx0/b;)Ljava/lang/Object;
    .locals 10

    iget v0, p1, Lx0/b;->a:F

    iget v1, p1, Lx0/b;->b:F

    iget-object v2, p1, Lx0/b;->c:Ljava/lang/Object;

    check-cast v2, Lp0/b;

    iget-object v2, v2, Lp0/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lx0/b;->d:Ljava/lang/Object;

    check-cast v3, Lp0/b;

    iget-object v3, v3, Lp0/b;->a:Ljava/lang/String;

    iget v4, p1, Lx0/b;->e:F

    iget v5, p1, Lx0/b;->f:F

    iget v6, p1, Lx0/b;->g:F

    iget-object v7, p0, Ln0/u;->c:Lx0/b;

    iput v0, v7, Lx0/b;->a:F

    iput v1, v7, Lx0/b;->b:F

    iput-object v2, v7, Lx0/b;->c:Ljava/lang/Object;

    iput-object v3, v7, Lx0/b;->d:Ljava/lang/Object;

    iput v4, v7, Lx0/b;->e:F

    iput v5, v7, Lx0/b;->f:F

    iput v6, v7, Lx0/b;->g:F

    iget-object v0, p0, Ln0/u;->d:Lx0/c;

    invoke-virtual {v0, v7}, Lx0/c;->a(Lx0/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Lx0/b;->f:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-object p1, p1, Lx0/b;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lx0/b;->c:Ljava/lang/Object;

    :goto_0
    check-cast p1, Lp0/b;

    iget-object v1, p1, Lp0/b;->b:Ljava/lang/String;

    iget v2, p1, Lp0/b;->c:F

    iget-object v3, p1, Lp0/b;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    iget v4, p1, Lp0/b;->e:I

    iget v5, p1, Lp0/b;->f:F

    iget v6, p1, Lp0/b;->g:F

    iget v7, p1, Lp0/b;->h:I

    iget v8, p1, Lp0/b;->i:I

    iget v9, p1, Lp0/b;->j:F

    iget-boolean p1, p1, Lp0/b;->k:Z

    iget-object p0, p0, Ln0/u;->e:Lp0/b;

    iput-object v0, p0, Lp0/b;->a:Ljava/lang/String;

    iput-object v1, p0, Lp0/b;->b:Ljava/lang/String;

    iput v2, p0, Lp0/b;->c:F

    iput-object v3, p0, Lp0/b;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    iput v4, p0, Lp0/b;->e:I

    iput v5, p0, Lp0/b;->f:F

    iput v6, p0, Lp0/b;->g:F

    iput v7, p0, Lp0/b;->h:I

    iput v8, p0, Lp0/b;->i:I

    iput v9, p0, Lp0/b;->j:F

    iput-boolean p1, p0, Lp0/b;->k:Z

    return-object p0
.end method
