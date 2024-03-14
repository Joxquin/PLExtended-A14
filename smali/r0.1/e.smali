.class public final Lr0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final a:Lcom/airbnb/lottie/model/content/GradientType;

.field public final b:Landroid/graphics/Path$FillType;

.field public final c:Lq0/c;

.field public final d:Lq0/d;

.field public final e:Lq0/f;

.field public final f:Lq0/f;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lq0/c;Lq0/d;Lq0/f;Lq0/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr0/e;->a:Lcom/airbnb/lottie/model/content/GradientType;

    iput-object p3, p0, Lr0/e;->b:Landroid/graphics/Path$FillType;

    iput-object p4, p0, Lr0/e;->c:Lq0/c;

    iput-object p5, p0, Lr0/e;->d:Lq0/d;

    iput-object p6, p0, Lr0/e;->e:Lq0/f;

    iput-object p7, p0, Lr0/e;->f:Lq0/f;

    iput-object p1, p0, Lr0/e;->g:Ljava/lang/String;

    iput-boolean p8, p0, Lr0/e;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/airbnb/lottie/a;Ls0/b;)Lm0/d;
    .locals 1

    new-instance v0, Lm0/i;

    invoke-direct {v0, p1, p2, p0}, Lm0/i;-><init>(Lcom/airbnb/lottie/a;Ls0/b;Lr0/e;)V

    return-object v0
.end method
