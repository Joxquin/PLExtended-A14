.class public final Lr0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Z

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Ljava/lang/String;

.field public final d:Lq0/a;

.field public final e:Lq0/d;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lq0/a;Lq0/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/n;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lr0/n;->a:Z

    iput-object p3, p0, Lr0/n;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lr0/n;->d:Lq0/a;

    iput-object p5, p0, Lr0/n;->e:Lq0/d;

    iput-boolean p6, p0, Lr0/n;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/h;

    invoke-direct {v0, p1, p2, p0}, Lm0/h;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/n;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lr0/n;->a:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
