.class public final Lr0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq0/b;

.field public final c:Lq0/b;

.field public final d:Lq0/l;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq0/b;Lq0/b;Lq0/l;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lr0/k;->b:Lq0/b;

    iput-object p3, p0, Lr0/k;->c:Lq0/b;

    iput-object p4, p0, Lr0/k;->d:Lq0/l;

    iput-boolean p5, p0, Lr0/k;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/q;

    invoke-direct {v0, p1, p2, p0}, Lm0/q;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/k;)V

    return-object v0
.end method
