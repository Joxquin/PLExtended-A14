.class public final Lr0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

.field public final c:Lq0/b;

.field public final d:Lq0/m;

.field public final e:Lq0/b;

.field public final f:Lq0/b;

.field public final g:Lq0/b;

.field public final h:Lq0/b;

.field public final i:Lq0/b;

.field public final j:Z

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lq0/b;Lq0/m;Lq0/b;Lq0/b;Lq0/b;Lq0/b;Lq0/b;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lr0/i;->b:Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    iput-object p3, p0, Lr0/i;->c:Lq0/b;

    iput-object p4, p0, Lr0/i;->d:Lq0/m;

    iput-object p5, p0, Lr0/i;->e:Lq0/b;

    iput-object p6, p0, Lr0/i;->f:Lq0/b;

    iput-object p7, p0, Lr0/i;->g:Lq0/b;

    iput-object p8, p0, Lr0/i;->h:Lq0/b;

    iput-object p9, p0, Lr0/i;->i:Lq0/b;

    iput-boolean p10, p0, Lr0/i;->j:Z

    iput-boolean p11, p0, Lr0/i;->k:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/o;

    invoke-direct {v0, p1, p2, p0}, Lm0/o;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/i;)V

    return-object v0
.end method
