.class public final Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:F

.field public d:Lcom/airbnb/lottie/model/DocumentData$Justification;

.field public e:I

.field public f:F

.field public g:F

.field public h:I

.field public i:I

.field public j:F

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FLcom/airbnb/lottie/model/DocumentData$Justification;IFFIIFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp0/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lp0/b;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lp0/b;->c:F

    .line 5
    iput-object p4, p0, Lp0/b;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 6
    iput p5, p0, Lp0/b;->e:I

    .line 7
    iput p6, p0, Lp0/b;->f:F

    .line 8
    iput p7, p0, Lp0/b;->g:F

    .line 9
    iput p8, p0, Lp0/b;->h:I

    .line 10
    iput p9, p0, Lp0/b;->i:I

    .line 11
    iput p10, p0, Lp0/b;->j:F

    .line 12
    iput-boolean p11, p0, Lp0/b;->k:Z

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lp0/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp0/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    int-to-float v0, v1

    iget v1, p0, Lp0/b;->c:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp0/b;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lp0/b;->e:I

    add-int/2addr v1, v0

    iget v0, p0, Lp0/b;->f:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lp0/b;->h:I

    add-int/2addr v1, p0

    return v1
.end method
