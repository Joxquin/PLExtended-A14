.class public final Lcom/android/systemui/animation/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:Z


# direct methods
.method public constructor <init>(IIIIFFI)V
    .locals 2

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move p5, v1

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v1

    :cond_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/animation/n;->a:I

    iput p2, p0, Lcom/android/systemui/animation/n;->b:I

    iput p3, p0, Lcom/android/systemui/animation/n;->c:I

    iput p4, p0, Lcom/android/systemui/animation/n;->d:I

    iput p5, p0, Lcom/android/systemui/animation/n;->e:F

    iput p6, p0, Lcom/android/systemui/animation/n;->f:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/animation/n;->g:Z

    return-void
.end method
