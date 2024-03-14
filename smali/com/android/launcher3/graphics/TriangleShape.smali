.class public final Lcom/android/launcher3/graphics/TriangleShape;
.super Landroid/graphics/drawable/shapes/PathShape;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field private mTriangularPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    iput-object p1, p0, Lcom/android/launcher3/graphics/TriangleShape;->mTriangularPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/TriangleShape;->mTriangularPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method
