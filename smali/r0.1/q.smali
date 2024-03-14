.class public final Lr0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq0/b;

.field public final c:Ljava/util/List;

.field public final d:Lq0/a;

.field public final e:Lq0/d;

.field public final f:Lq0/b;

.field public final g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field public final h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

.field public final i:F

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq0/b;Ljava/util/List;Lq0/a;Lq0/d;Lq0/b;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lr0/q;->b:Lq0/b;

    iput-object p3, p0, Lr0/q;->c:Ljava/util/List;

    iput-object p4, p0, Lr0/q;->d:Lq0/a;

    iput-object p5, p0, Lr0/q;->e:Lq0/d;

    iput-object p6, p0, Lr0/q;->f:Lq0/b;

    iput-object p7, p0, Lr0/q;->g:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    iput-object p8, p0, Lr0/q;->h:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    iput p9, p0, Lr0/q;->i:F

    iput-boolean p10, p0, Lr0/q;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/u;

    invoke-direct {v0, p1, p2, p0}, Lm0/u;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/q;)V

    return-object v0
.end method
