.class public final Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq0/m;

.field public final c:Lq0/f;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq0/m;Lq0/f;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lr0/b;->b:Lq0/m;

    iput-object p3, p0, Lr0/b;->c:Lq0/f;

    iput-boolean p4, p0, Lr0/b;->d:Z

    iput-boolean p5, p0, Lr0/b;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/g;

    invoke-direct {v0, p1, p2, p0}, Lm0/g;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/b;)V

    return-object v0
.end method
