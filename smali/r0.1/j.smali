.class public final Lr0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq0/m;

.field public final c:Lq0/m;

.field public final d:Lq0/b;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq0/m;Lq0/f;Lq0/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lr0/j;->b:Lq0/m;

    iput-object p3, p0, Lr0/j;->c:Lq0/m;

    iput-object p4, p0, Lr0/j;->d:Lq0/b;

    iput-boolean p5, p0, Lr0/j;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/p;

    invoke-direct {v0, p1, p2, p0}, Lm0/p;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/j;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectangleShape{position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr0/j;->b:Lq0/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr0/j;->c:Lq0/m;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
